Exec {logoutput => true}
$winpath = "c:\\windows\\sysnative;$::path"
notify { $winpath: }
include "hyper-v::add_features"
include "hyper-v::disable_firewalls"
include "hyper-v::enable_live_migration"
include "hyper-v::enable_iscsi_initiator"
include "hyper-v::openstack_directories"






















