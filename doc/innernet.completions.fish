complete -c innernet -n "__fish_use_subcommand" -s c -l config-dir -r
complete -c innernet -n "__fish_use_subcommand" -s d -l data-dir -r
complete -c innernet -n "__fish_use_subcommand" -l backend -d 'Specify a WireGuard backend to use. If not set, innernet will auto-select based on availability' -r -f -a "{kernel	,userspace	}"
complete -c innernet -n "__fish_use_subcommand" -l mtu -d 'Specify the desired MTU for your interface (default: 1420 for IPv4 and 1400 for IPv6)' -r
complete -c innernet -n "__fish_use_subcommand" -s h -l help -d 'Print help information'
complete -c innernet -n "__fish_use_subcommand" -s V -l version -d 'Print version information'
complete -c innernet -n "__fish_use_subcommand" -s v -l verbose -d 'Verbose output, use -vv for even higher verbositude'
complete -c innernet -n "__fish_use_subcommand" -l no-routing -d 'Whether the routing should be done by innernet or is done by an external tool like e.g. babeld'
complete -c innernet -n "__fish_use_subcommand" -f -a "install" -d 'Install a new innernet config'
complete -c innernet -n "__fish_use_subcommand" -f -a "show" -d 'Enumerate all innernet connections'
complete -c innernet -n "__fish_use_subcommand" -f -a "up" -d 'Bring up your local interface, and update it with latest peer list'
complete -c innernet -n "__fish_use_subcommand" -f -a "fetch" -d 'Fetch and update your local interface with the latest peer list'
complete -c innernet -n "__fish_use_subcommand" -f -a "uninstall" -d 'Uninstall an innernet network'
complete -c innernet -n "__fish_use_subcommand" -f -a "down" -d 'Bring down the interface (equivalent to \'wg-quick down <interface>\')'
complete -c innernet -n "__fish_use_subcommand" -f -a "add-peer" -d 'Add a new peer'
complete -c innernet -n "__fish_use_subcommand" -f -a "rename-peer" -d 'Rename a peer'
complete -c innernet -n "__fish_use_subcommand" -f -a "add-cidr" -d 'Add a new CIDR'
complete -c innernet -n "__fish_use_subcommand" -f -a "delete-cidr" -d 'Delete a CIDR'
complete -c innernet -n "__fish_use_subcommand" -f -a "list-cidrs" -d 'List CIDRs'
complete -c innernet -n "__fish_use_subcommand" -f -a "disable-peer" -d 'Disable an enabled peer'
complete -c innernet -n "__fish_use_subcommand" -f -a "enable-peer" -d 'Enable a disabled peer'
complete -c innernet -n "__fish_use_subcommand" -f -a "add-association" -d 'Add an association between CIDRs'
complete -c innernet -n "__fish_use_subcommand" -f -a "delete-association" -d 'Delete an association between CIDRs'
complete -c innernet -n "__fish_use_subcommand" -f -a "list-associations" -d 'List existing assocations between CIDRs'
complete -c innernet -n "__fish_use_subcommand" -f -a "set-listen-port" -d 'Set the local listen port'
complete -c innernet -n "__fish_use_subcommand" -f -a "override-endpoint" -d 'Override your external endpoint that the server sends to other peers'
complete -c innernet -n "__fish_use_subcommand" -f -a "completions" -d 'Generate shell completion scripts'
complete -c innernet -n "__fish_use_subcommand" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c innernet -n "__fish_seen_subcommand_from install" -l hosts-path -d 'The path to write hosts to' -r
complete -c innernet -n "__fish_seen_subcommand_from install" -l name -d 'Set a specific interface name' -r
complete -c innernet -n "__fish_seen_subcommand_from install" -l exclude-nat-candidates -d 'Exclude one or more CIDRs from NAT candidate reporting. ex. --exclude-nat-candidates \'0.0.0.0/0\' would report no candidates' -r
complete -c innernet -n "__fish_seen_subcommand_from install" -l no-write-hosts -d 'Don\'t write to any hosts files'
complete -c innernet -n "__fish_seen_subcommand_from install" -l default-name -d 'Use the network name inside the invitation as the interface name'
complete -c innernet -n "__fish_seen_subcommand_from install" -s d -l delete-invite -d 'Delete the invitation after a successful install'
complete -c innernet -n "__fish_seen_subcommand_from install" -l no-nat-traversal -d 'Don\'t attempt NAT traversal. Note that this still will report candidates unless you also specify to exclude all NAT candidates'
complete -c innernet -n "__fish_seen_subcommand_from install" -l no-nat-candidates -d 'Don\'t report any candidates to coordinating server. Shorthand for --exclude-nat-candidates \'0.0.0.0/0\''
complete -c innernet -n "__fish_seen_subcommand_from install" -s h -l help -d 'Print help information'
complete -c innernet -n "__fish_seen_subcommand_from show" -s s -l short -d 'One-line peer list'
complete -c innernet -n "__fish_seen_subcommand_from show" -s t -l tree -d 'Display peers in a tree based on the CIDRs'
complete -c innernet -n "__fish_seen_subcommand_from show" -s h -l help -d 'Print help information'
complete -c innernet -n "__fish_seen_subcommand_from up" -l interval -d 'Keep fetching the latest peer list at the specified interval in seconds. Valid only in daemon mode' -r
complete -c innernet -n "__fish_seen_subcommand_from up" -l hosts-path -d 'The path to write hosts to' -r
complete -c innernet -n "__fish_seen_subcommand_from up" -l exclude-nat-candidates -d 'Exclude one or more CIDRs from NAT candidate reporting. ex. --exclude-nat-candidates \'0.0.0.0/0\' would report no candidates' -r
complete -c innernet -n "__fish_seen_subcommand_from up" -s d -l daemon -d 'Enable daemon mode i.e. keep the process running, while fetching the latest peer list periodically'
complete -c innernet -n "__fish_seen_subcommand_from up" -l no-write-hosts -d 'Don\'t write to any hosts files'
complete -c innernet -n "__fish_seen_subcommand_from up" -l no-nat-traversal -d 'Don\'t attempt NAT traversal. Note that this still will report candidates unless you also specify to exclude all NAT candidates'
complete -c innernet -n "__fish_seen_subcommand_from up" -l no-nat-candidates -d 'Don\'t report any candidates to coordinating server. Shorthand for --exclude-nat-candidates \'0.0.0.0/0\''
complete -c innernet -n "__fish_seen_subcommand_from up" -s h -l help -d 'Print help information'
complete -c innernet -n "__fish_seen_subcommand_from fetch" -l hosts-path -d 'The path to write hosts to' -r
complete -c innernet -n "__fish_seen_subcommand_from fetch" -l exclude-nat-candidates -d 'Exclude one or more CIDRs from NAT candidate reporting. ex. --exclude-nat-candidates \'0.0.0.0/0\' would report no candidates' -r
complete -c innernet -n "__fish_seen_subcommand_from fetch" -l no-write-hosts -d 'Don\'t write to any hosts files'
complete -c innernet -n "__fish_seen_subcommand_from fetch" -l no-nat-traversal -d 'Don\'t attempt NAT traversal. Note that this still will report candidates unless you also specify to exclude all NAT candidates'
complete -c innernet -n "__fish_seen_subcommand_from fetch" -l no-nat-candidates -d 'Don\'t report any candidates to coordinating server. Shorthand for --exclude-nat-candidates \'0.0.0.0/0\''
complete -c innernet -n "__fish_seen_subcommand_from fetch" -s h -l help -d 'Print help information'
complete -c innernet -n "__fish_seen_subcommand_from uninstall" -l yes -d 'Bypass confirmation'
complete -c innernet -n "__fish_seen_subcommand_from uninstall" -s h -l help -d 'Print help information'
complete -c innernet -n "__fish_seen_subcommand_from down" -s h -l help -d 'Print help information'
complete -c innernet -n "__fish_seen_subcommand_from add-peer" -l name -d 'Name of new peer' -r
complete -c innernet -n "__fish_seen_subcommand_from add-peer" -l ip -d 'Specify desired IP of new peer (within parent CIDR)' -r
complete -c innernet -n "__fish_seen_subcommand_from add-peer" -l cidr -d 'Name of CIDR to add new peer under' -r
complete -c innernet -n "__fish_seen_subcommand_from add-peer" -l admin -d 'Make new peer an admin?' -r
complete -c innernet -n "__fish_seen_subcommand_from add-peer" -l save-config -d 'Save the config to the given location' -r
complete -c innernet -n "__fish_seen_subcommand_from add-peer" -l invite-expires -d 'Invite expiration period (eg. \'30d\', \'7w\', \'2h\', \'60m\', \'1000s\')' -r
complete -c innernet -n "__fish_seen_subcommand_from add-peer" -l auto-ip -d 'Auto-assign the peer the first available IP within the CIDR'
complete -c innernet -n "__fish_seen_subcommand_from add-peer" -l yes -d 'Bypass confirmation'
complete -c innernet -n "__fish_seen_subcommand_from add-peer" -s h -l help -d 'Print help information'
complete -c innernet -n "__fish_seen_subcommand_from rename-peer" -l name -d 'Name of peer to rename' -r
complete -c innernet -n "__fish_seen_subcommand_from rename-peer" -l new-name -d 'The new name of the peer' -r
complete -c innernet -n "__fish_seen_subcommand_from rename-peer" -l yes -d 'Bypass confirmation'
complete -c innernet -n "__fish_seen_subcommand_from rename-peer" -s h -l help -d 'Print help information'
complete -c innernet -n "__fish_seen_subcommand_from add-cidr" -l name -d 'The CIDR name (eg. \'engineers\')' -r
complete -c innernet -n "__fish_seen_subcommand_from add-cidr" -l cidr -d 'The CIDR network (eg. \'10.42.5.0/24\')' -r
complete -c innernet -n "__fish_seen_subcommand_from add-cidr" -l parent -d 'The CIDR parent name' -r
complete -c innernet -n "__fish_seen_subcommand_from add-cidr" -l yes -d 'Bypass confirmation'
complete -c innernet -n "__fish_seen_subcommand_from add-cidr" -s h -l help -d 'Print help information'
complete -c innernet -n "__fish_seen_subcommand_from delete-cidr" -l name -d 'The CIDR name (eg. \'engineers\')' -r
complete -c innernet -n "__fish_seen_subcommand_from delete-cidr" -l yes -d 'Bypass confirmation'
complete -c innernet -n "__fish_seen_subcommand_from delete-cidr" -s h -l help -d 'Print help information'
complete -c innernet -n "__fish_seen_subcommand_from list-cidrs" -s t -l tree -d 'Display CIDRs in tree format'
complete -c innernet -n "__fish_seen_subcommand_from list-cidrs" -s h -l help -d 'Print help information'
complete -c innernet -n "__fish_seen_subcommand_from disable-peer" -s h -l help -d 'Print help information'
complete -c innernet -n "__fish_seen_subcommand_from enable-peer" -s h -l help -d 'Print help information'
complete -c innernet -n "__fish_seen_subcommand_from add-association" -l yes -d 'Bypass confirmation'
complete -c innernet -n "__fish_seen_subcommand_from add-association" -s h -l help -d 'Print help information'
complete -c innernet -n "__fish_seen_subcommand_from delete-association" -l yes -d 'Bypass confirmation'
complete -c innernet -n "__fish_seen_subcommand_from delete-association" -s h -l help -d 'Print help information'
complete -c innernet -n "__fish_seen_subcommand_from list-associations" -s h -l help -d 'Print help information'
complete -c innernet -n "__fish_seen_subcommand_from set-listen-port" -s l -l listen-port -d 'The listen port you\'d like to set for the interface' -r
complete -c innernet -n "__fish_seen_subcommand_from set-listen-port" -s u -l unset -d 'Unset the local listen port to use a randomized port'
complete -c innernet -n "__fish_seen_subcommand_from set-listen-port" -l yes -d 'Bypass confirmation'
complete -c innernet -n "__fish_seen_subcommand_from set-listen-port" -s h -l help -d 'Print help information'
complete -c innernet -n "__fish_seen_subcommand_from override-endpoint" -s e -l endpoint -d 'The listen port you\'d like to set for the interface' -r
complete -c innernet -n "__fish_seen_subcommand_from override-endpoint" -s u -l unset -d 'Unset an existing override to use the automatic endpoint discovery'
complete -c innernet -n "__fish_seen_subcommand_from override-endpoint" -l yes -d 'Bypass confirmation'
complete -c innernet -n "__fish_seen_subcommand_from override-endpoint" -s h -l help -d 'Print help information'
complete -c innernet -n "__fish_seen_subcommand_from completions" -s h -l help -d 'Print help information'
