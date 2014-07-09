
default[:collectd_mesos][:repo] = "https://github.com/rayrod2030/collectd-mesos.git"
default[:collectd_mesos][:revision] = "c57eebaf2b6ae550f51b2d24777a2c4627652e21"
default[:collectd_mesos][:install_dir] = "/opt/collectd-mesos"
default[:collectd_mesos][:collectd_path] = "/opt/collectd"
default[:collectd_mesos][:verbose] = false

default[:collectd_mesos][:mesos][:host] = node[:ipaddress]
default[:collectd_mesos][:mesos][:port] = 5050
