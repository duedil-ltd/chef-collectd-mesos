
# Grab the plugin source code
git node[:collectd_mesos][:install_dir] do
    repository node[:collectd_mesos][:repo]
    revision node[:collectd_mesos][:revision]

    action :sync
end

plugins_dir = "#{node[:collectd_mesos][:collectd_path]}/lib/collectd/python/plugins"

# Drop in the plugin file
execute "install_collectd_mesos" do
    command "mkdir -p #{plugins_dir}; cp #{node[:collectd_mesos][:install_dir]}/mesos.py #{plugins_dir}/"
    action :run
end

# Configure the plugin config file
template "#{node[:collectd_mesos][:collectd_path]}/etc/conf.d/mesos.conf" do
    source "collectd.conf.erb"
    variables(
        :config => node[:collectd_mesos]
    )

    mode 0644
end
