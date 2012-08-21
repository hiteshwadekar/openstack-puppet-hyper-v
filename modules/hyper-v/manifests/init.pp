Exec {logoutput => true}
$winpath = "c:\\windows\\sysnative;$::path"
notify { $winpath: }
include "hyper-v::add_hyper-v_feature"






















