
default[:collectd_mesos][:repo] = "https://github.com/rayrod2030/collectd-mesos.git"
default[:collectd_mesos][:revision] = "dbd2c6d7d3098b47ea5abf69da421a5c41220789"
default[:collectd_mesos][:install_dir] = "/opt/collectd-mesos"
default[:collectd_mesos][:collectd_path] = "/opt/collectd"
default[:collectd_mesos][:verbose] = false

default[:collectd_mesos][:mesos][:host] = node[:ipaddress]
default[:collectd_mesos][:mesos][:port] = 5050
default[:collectd_mesos][:mesos][:type] = "master"
default[:collectd_mesos][:mesos][:version] = node[:mesos][:version]

