
# Grab the plugin source code
git node[:collectd_mesos][:install_dir] do
    repository node[:collectd_mesos][:repo]
    revision node[:collectd_mesos][:revision]

    action :sync
end

# Create the python plugin directory if it doesn't exist
directory "#{node[:collectd_mesos][:collectd_path]}/lib/collectd/python/plugins" do
    recursive true
end

# Drop in the plugin file
bash "install_collectd_mesos" do
    command "cp #{node[:collectd_mesos][:install_dir]}/mesos.py #{node[:collectd_mesos][:collectd_path]}/lib/collectd/python/plugins/"
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
