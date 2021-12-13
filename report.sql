    ----- PostgreSQL Ѳ�챨�� -----
    ===== 202108292257        =====
    ===== ����primary�ڵ�     =====

|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
|                      ����ϵͳ��Ϣ                           |
|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|

----->>>---->>>  ������:
db03

----->>>---->>>  ��̫��·��Ϣ:
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN mode DEFAULT group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP mode DEFAULT group default qlen 1000
    link/ether fa:16:3e:a8:87:c2 brd ff:ff:ff:ff:ff:ff

----->>>---->>>  IP��ַ��Ϣ:
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether fa:16:3e:a8:87:c2 brd ff:ff:ff:ff:ff:ff
    inet 192.168.0.102/24 brd 192.168.0.255 scope global noprefixroute dynamic eth0
       valid_lft 50849sec preferred_lft 50849sec
    inet 192.168.0.88/22 brd 192.168.0.255 scope global eth0:1
       valid_lft forever preferred_lft forever
    inet6 fe80::f816:3eff:fea8:87c2/64 scope link
       valid_lft forever preferred_lft forever

----->>>---->>>  ·����Ϣ:
default via 192.168.0.1 dev eth0 proto dhcp metric 100
169.254.169.254 via 192.168.0.254 dev eth0 proto dhcp metric 100
192.168.0.0/24 dev eth0 proto kernel scope link src 192.168.0.102 metric 100
192.168.0.0/22 dev eth0 proto kernel scope link src 192.168.0.88

----->>>---->>>  ����ϵͳ�ں�:
Linux db03 3.10.0-1160.15.2.el7.x86_64 #1 SMP Wed Feb 3 15:06:38 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux

----->>>---->>>  (MB):
              total        used        free      shared  buff/cache   available
Mem:           7820         521        4331         180        2967        6829
Swap:             0           0           0

----->>>---->>>  CPU:
Architecture:          x86_64
CPU op-mode(s):        32-bit, 64-bit
Byte Order:            Little Endian
CPU(s):                2
On-line CPU(s) list:   0,1
Thread(s) per core:    2
Core(s) per socket:    1
Socket(s):             1
NUMA node(s):          1
Vendor ID:             GenuineIntel
CPU family:            6
Model:                 85
Model name:            Intel(R) Xeon(R) Gold 6278C CPU @ 2.60GHz
Stepping:              7
CPU MHz:               2600.000
BogoMIPS:              5200.00
Hypervisor vendor:     KVM
Virtualization type:   full
L1d cache:             32K
L1i cache:             32K
L2 cache:              1024K
L3 cache:              36608K
NUMA node0 CPU(s):     0,1
Flags:                 fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology nonstop_tsc eagerfpu pni pclmulqdq ssse3 fma cx16 pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand hypervisor lahf_lm abm 3dnowprefetch invpcid_single ssbd ibrs ibpb stibp ibrs_enhanced fsgsbase tsc_adjust bmi1 hle avx2 smep bmi2 erms invpcid rtm mpx avx512f avx512dq rdseed adx smap clflushopt clwb avx512cd avx512bw avx512vl xsaveopt xsavec xgetbv1 arat avx512_vnni md_clear spec_ctrl intel_stibp flush_l1d arch_capabilities

----->>>---->>>  ���豸:
NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
vda    253:0    0  100G  0 disk
����vda1 253:1    0  100G  0 part /

----->>>---->>>  ����:
/home/atlasdb/scripts/generate_report.sh: line 72: lstopo-no-graphics: command not found

----->>>---->>>  ������:
Warning: -Z ignored. Requires anx SELinux enabled kernel
systemd,1 --switched-root --system --deserialize 22
  ����systemd-journal,354
  ����systemd-udevd,380
  ����auditd,411
  ��   ����{auditd},412
  ����irqbalance,501 --foreground
  ����dbus-daemon,503,dbus --system --address=systemd: --nofork --nopidfile --systemd-activation
  ����NetworkManager,505 --no-daemon
  ��   ����{NetworkManager},626
  ��   ����{NetworkManager},633
  ��   ����dhclient,706 -d -q -sf /usr/libexec/nm-dhcp-helper -pf /var/run/dhclient-eth0.pid -lf /var/lib/NetworkManager/dhclient-5fb06bd0-0bb0-7ffb-45f1-d6edd65f3e03-eth0.lease -cf /var/lib/NetworkManager/dhclient-eth0.conf eth0
  ����uniagent,506
  ��   ����{uniagent},552
  ��   ����{uniagent},554
  ��   ����{uniagent},555
  ��   ����{uniagent},557
  ��   ����{uniagent},631
  ��   ����{uniagent},644
  ��   ����{uniagent},646
  ��   ����{uniagent},1547
  ��   ����{uniagent},1727
  ����polkitd,511,polkitd --no-debug
  ��   ����{polkitd},608
  ��   ����{polkitd},614
  ��   ����{polkitd},618
  ��   ����{polkitd},628
  ��   ����{polkitd},635
  ��   ����{polkitd},657
  ����chronyd,531,chrony
  ����tuned,637 -Es /usr/sbin/tuned -l -P
  ��   ����{tuned},1185
  ��   ����{tuned},1186
  ��   ����{tuned},1188
  ��   ����{tuned},1189
  ����wrapper,681 /CloudResetPwdUpdateAgent/bin/../conf/wrapper.conf wrapper.syslog.ident=cloudResetPwdUpdateAgent wrapper.pidfile=/CloudResetPwdUpdateAgent/bin/./cloudResetPwdUpdateAgent.pid wrapper.name=cloudResetPwdUpdateAgent wrapper.displayname=cloudResetPwdUpdateAgent wrapper.daemonize=TRUE wrapper.statusfile=/CloudResetPwdUpdateAgent/bin/./cloudResetPwdUpdateAgent.status wrapper.java.statusfile=/CloudResetPwdUpdateAgent/bin/./cloudResetPwdUpdateAgent.java.status wrapper.lockfile=/var/lock/subsys/cloudResetPwdUpdateAgent wrapper.script.version=3.5.26
  ��   ����{wrapper},682
  ��   ����java,814 -Dorg.tanukisoftware.wrapper.WrapperSimpleApp.maxStartMainWait=40 -Djava.library.path=../lib -classpath ../lib/resetpwdupdateagent.jar:../lib/wrapper.jar:../lib/json-20160810.jar:../lib/log4j-api-2.8.2.jar:../lib/log4j-core-2.8.2.jar -Dwrapper.key=GmyswPgVrZoT9sSb -Dwrapper.backend=pipe -Dwrapper.disable_console_input=TRUE -Dwrapper.pid=681 -Dwrapper.version=3.5.26 -Dwrapper.native_library=wrapper -Dwrapper.arch=x86 -Dwrapper.service=TRUE -Dwrapper.cpu.timeout=180 -Dwrapper.jvmid=1 org.tanukisoftware.wrapper.WrapperSimpleApp CloudResetPwdUpdateAgent
  ��       ����{java},819
  ��       ����{java},834
  ��       ����{java},842
  ��       ����{java},882
  ��       ����{java},901
  ��       ����{java},917
  ��       ����{java},980
  ��       ����{java},986
  ��       ����{java},994
  ��       ����{java},1000
  ��       ����{java},1007
  ��       ����{java},1168
  ��       ����{java},1278
  ��       ����{java},1302
  ��       ����{java},3429
  ����rsyslogd,752 -n
  ��   ����{rsyslogd},767
  ��   ����{rsyslogd},771
  ����master,1149 -w
  ��   ����pickup,1141,postfix -l -t unix -u
  ��   ����qmgr,1153,postfix -l -t unix -u
  ����sshd,1355 -D
  ��   ����sshd,1240
  ��   ��   ����bash,1242
  ��   ��       ����bash,2199
  ��   ��           ����sh,2200 /home/atlasdb/scripts/generate_report.sh
  ��   ��               ����pstree,2220 -a -A -c -l -n -p -u -U -Z
  ��   ����sshd,1687
  ��       ����bash,1691
  ��           ����su,1713 - atlasdb
  ��               ����bash,1714,atlasdb
  ����atd,1359 -f
  ����crond,1360 -n
  ����agetty,1395 --keep-baud 115200,38400,9600 ttyS0 vt220
  ����agetty,1396 --noclear tty1 linux
  ����hostguard,1497
  ��   ����hostguard,1499
  ��       ����{hostguard},1500
  ��       ����{hostguard},1501
  ��       ����{hostguard},1502
  ��       ����{hostguard},1503
  ��       ����{hostguard},1504
  ��       ����{hostguard},1505
  ��       ����{hostguard},1506
  ��       ����{hostguard},1507
  ��       ����{hostguard},1508
  ��       ����{hostguard},1509
  ��       ����{hostguard},1510
  ��       ����{hostguard},1511
  ��       ����{hostguard},1518
  ��       ����{hostguard},1519
  ��       ����{hostguard},1520
  ��       ����{hostguard},1521
  ����systemd-logind,1788
  ����etcd,4625 --name=etcd03 --data-dir=/usr/etcd/etcd_data/etcd03.etcd --listen-client-urls=http://192.168.0.102:2379,http://127.0.0.1:2379
  ��   ����{etcd},4628
  ��   ����{etcd},4629
  ��   ����{etcd},4630
  ��   ����{etcd},4631
  ��   ����{etcd},4632
  ��   ����{etcd},4633
  ��   ����{etcd},4634
  ��   ����{etcd},4635
  ��   ����{etcd},4636
  ��   ����{etcd},28330
  ����patroni,16961,atlasdb ./atlasdb.yml
  ��   ����patroni,16962 ./atlasdb.yml
  ��       ����{patroni},16967
  ��       ����{patroni},16968
  ��       ����{patroni},16971
  ��       ����{patroni},16973
  ����atlasdb,17854,atlasdb -D /data/atlasdb --config-file=/data/atlasdb/atlasdb.conf --listen_addresses=0.0.0.0 --max_worker_processes=8 --max_locks_per_transaction=64 --wal_level=logical --track_commit_timestamp=off --max_prepared_transactions=0 --port=5432 --max_replication_slots=10 --max_connections=2000 --hot_standby=on --cluster_name=AtlasDB_Cluster --wal_log_hints=on --max_wal_senders=10
      ����atlasdb,17856
      ����atlasdb,17878
      ����atlasdb,17879
      ����atlasdb,17880
      ����atlasdb,17890
      ����atlasdb,17928
      ����atlasdb,17929
      ����atlasdb,17930
      ����atlasdb,17931
      ����atlasdb,17942
      ����atlasdb,17943

----->>>---->>>  ����ϵͳ�����ļ� ��̬������Ϣ:
----->>>---->>>  /etc/sysctl.conf
vm.swappiness=0
net.core.somaxconn=1024
net.ipv4.tcp_max_tw_buckets=5000
net.ipv4.tcp_max_syn_backlog=1024

----->>>---->>>  /etc/security/limits.conf
root soft nofile 65535
root hard nofile 65535
* soft nofile 65535
* hard nofile 65535
atlasdb soft nproc unlimited
atlasdb hard nproc unlimited
atlasdb soft nofile 102400
atlasdb hard nofile 102400
atlasdb soft stack unlimited
atlasdb hard stack unlimited
atlasdb soft core unlimited
atlasdb hard core unlimited
atlasdb soft memlock unlimited
atlasdb hard memlock unlimited

----->>>---->>>  /etc/security/limits.d/*.conf
/etc/security/limits.d/20-nproc.conf :
*          soft    nproc     4096
root       soft    nproc     unlimited

----->>>---->>>  /etc/sysconfig/iptables
cat: /etc/sysconfig/iptables: No such file or directory

----->>>---->>>  /etc/fstab

#
# /etc/fstab
# Created by anaconda on Fri Feb 26 06:03:53 2021
#
# Accessible filesystems, by reference, are maintained under '/dev/disk'
# See man pages fstab(5), findfs(8), mount(8) and/or blkid(8) for more info
#
UUID=37fc43e9-788d-4ab5-af51-e7daafd314e8 /                       ext4    defaults        1 1

----->>>---->>>  /etc/rc.local
#!/bin/bash
# THIS FILE IS ADDED FOR COMPATIBILITY PURPOSES
#
# It is highly advisable to create own systemd services or udev rules
# to run scripts during boot instead of using this file.
#
# In contrast to previous versions due to parallel execution during boot
# this script will NOT be run after all other services.
#
# Please note that you must run 'chmod +x /etc/rc.d/rc.local' to ensure
# that this script will be executed during boot.

touch /var/lock/subsys/local

----->>>---->>>  /etc/selinux/config

# This file controls the state of SELinux on the system.
# SELINUX= can take one of these three values:
#     enforcing - SELinux security policy is enforced.
#     permissive - SELinux prints warnings instead of enforcing.
#     disabled - No SELinux policy is loaded.
SELINUX=disabled
# SELINUXTYPE= can take one of three values:
#     targeted - Targeted processes are protected,
#     minimum - Modification of targeted policy. Only selected processes are protected.
#     mls - Multi Level Security protection.
SELINUXTYPE=targeted



----->>>---->>>  /boot/grub/grub.conf
cat: /boot/grub/grub.conf: No such file or directory

----->>>---->>>  /var/spool/cron �û�cron����
/var/spool/cron/atlasdb :
@reboot source /home/atlasdb/.atlasdb && patroni /home/atlasdb/patroni/atlasdb.yml &>>/home/atlasdb/patroni/patroni.log 2>&1

----->>>---->>>  chkconfig --list

Note: This output shows SysV services only and does not include native
      systemd services. SysV configuration data might be overridden by native
      systemd configuration.

      If you want to list systemd services use 'systemctl list-unit-files'.
      To see services enabled on particular target use
      'systemctl list-dependencies [target]'.

hostguard       0:off   1:off   2:on    3:on    4:on    5:on    6:off
multi-queue-hw  0:off   1:off   2:on    3:on    4:on    5:on    6:off
netconsole      0:off   1:off   2:off   3:off   4:off   5:off   6:off
network         0:off   1:off   2:off   3:off   4:off   5:off   6:off

----->>>---->>>  iptables -L -v -n -t filter ��̬������Ϣ:
Chain INPUT (policy ACCEPT 739K packets, 74M bytes)
 pkts bytes target     prot opt in     out     source               destination

Chain FORWARD (policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source               destination

Chain OUTPUT (policy ACCEPT 744K packets, 74M bytes)
 pkts bytes target     prot opt in     out     source               destination

----->>>---->>>  iptables -L -v -n -t nat ��̬������Ϣ:
Chain PREROUTING (policy ACCEPT 8958 packets, 538K bytes)
 pkts bytes target     prot opt in     out     source               destination

Chain INPUT (policy ACCEPT 8958 packets, 538K bytes)
 pkts bytes target     prot opt in     out     source               destination

Chain OUTPUT (policy ACCEPT 9033 packets, 548K bytes)
 pkts bytes target     prot opt in     out     source               destination

Chain POSTROUTING (policy ACCEPT 9033 packets, 548K bytes)
 pkts bytes target     prot opt in     out     source               destination

----->>>---->>>  iptables -L -v -n -t mangle ��̬������Ϣ:
Chain PREROUTING (policy ACCEPT 739K packets, 74M bytes)
 pkts bytes target     prot opt in     out     source               destination

Chain INPUT (policy ACCEPT 739K packets, 74M bytes)
 pkts bytes target     prot opt in     out     source               destination

Chain FORWARD (policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source               destination

Chain OUTPUT (policy ACCEPT 744K packets, 74M bytes)
 pkts bytes target     prot opt in     out     source               destination

Chain POSTROUTING (policy ACCEPT 744K packets, 74M bytes)
 pkts bytes target     prot opt in     out     source               destination

----->>>---->>>  iptables -L -v -n -t raw ��̬������Ϣ:
Chain PREROUTING (policy ACCEPT 739K packets, 74M bytes)
 pkts bytes target     prot opt in     out     source               destination

Chain OUTPUT (policy ACCEPT 744K packets, 74M bytes)
 pkts bytes target     prot opt in     out     source               destination

----->>>---->>>  sysctl -a ��̬������Ϣ:
abi.vsyscall32 = 1
crypto.fips_enabled = 0
debug.exception-trace = 1
debug.kprobes-optimization = 1
debug.panic_on_rcu_stall = 0
dev.hpet.max-user-freq = 64
dev.mac_hid.mouse_button2_keycode = 97
dev.mac_hid.mouse_button3_keycode = 100
dev.mac_hid.mouse_button_emulation = 0
dev.parport.default.spintime = 500
dev.parport.default.timeslice = 200
dev.raid.speed_limit_max = 200000
dev.raid.speed_limit_min = 1000
dev.scsi.logging_level = 0
fs.aio-max-nr = 65536
fs.aio-nr = 0
fs.binfmt_misc.status = enabled
fs.dentry-state = 92321 81849   45      0       25068   0
fs.dir-notify-enable = 1
fs.epoll.max_user_watches = 1635901
fs.file-max = 764294
fs.file-nr = 1504       0       764294
fs.inode-nr = 65170     321
fs.inode-state = 65170  321     0       0       0       0       0
fs.inotify.max_queued_events = 16384
fs.inotify.max_user_instances = 128
fs.inotify.max_user_watches = 8192
fs.lease-break-time = 45
fs.leases-enable = 1
fs.may_detach_mounts = 0
fs.mount-max = 100000
fs.mqueue.msg_default = 10
fs.mqueue.msg_max = 10
fs.mqueue.msgsize_default = 8192
fs.mqueue.msgsize_max = 8192
fs.mqueue.queues_max = 256
fs.negative-dentry-limit = 0
fs.nr_open = 1048576
fs.overflowgid = 65534
fs.overflowuid = 65534
fs.pipe-max-size = 1048576
fs.pipe-user-pages-hard = 0
fs.pipe-user-pages-soft = 16384
fs.protected_hardlinks = 1
fs.protected_symlinks = 1
fs.quota.allocated_dquots = 0
fs.quota.cache_hits = 0
fs.quota.drops = 0
fs.quota.free_dquots = 0
fs.quota.lookups = 0
fs.quota.reads = 0
fs.quota.syncs = 0
fs.quota.warnings = 1
fs.quota.writes = 0
fs.suid_dumpable = 0
kernel.acct = 4 2       30
kernel.acpi_video_flags = 0
kernel.auto_msgmni = 0
kernel.bootloader_type = 114
kernel.bootloader_version = 2
kernel.cad_pid = 1
kernel.cap_last_cap = 36
kernel.compat-log = 1
kernel.core_pattern = core
kernel.core_pipe_limit = 0
kernel.core_uses_pid = 1
kernel.ctrl-alt-del = 0
kernel.dmesg_restrict = 0
kernel.domainname = (none)
kernel.ftrace_dump_on_oops = 0
kernel.ftrace_enabled = 1
kernel.hardlockup_all_cpu_backtrace = 0
kernel.hardlockup_panic = 1
kernel.hostname = db03
kernel.hotplug =
kernel.hung_task_check_count = 4194304
kernel.hung_task_panic = 0
kernel.hung_task_timeout_secs = 120
kernel.hung_task_warnings = 10
kernel.io_delay_type = 0
kernel.kexec_load_disabled = 0
kernel.keys.gc_delay = 300
kernel.keys.maxbytes = 20000
kernel.keys.maxkeys = 200
kernel.keys.persistent_keyring_expiry = 259200
kernel.keys.root_maxbytes = 25000000
kernel.keys.root_maxkeys = 1000000
kernel.kptr_restrict = 1
kernel.max_lock_depth = 1024
kernel.modprobe = /sbin/modprobe
kernel.modules_disabled = 0
kernel.msg_next_id = -1
kernel.msgmax = 8192
kernel.msgmnb = 16384
kernel.msgmni = 32000
kernel.ngroups_max = 65536
kernel.nmi_watchdog = 1
kernel.ns_last_pid = 2239
kernel.numa_balancing = 0
kernel.numa_balancing_scan_delay_ms = 1000
kernel.numa_balancing_scan_period_max_ms = 60000
kernel.numa_balancing_scan_period_min_ms = 1000
kernel.numa_balancing_scan_size_mb = 256
kernel.numa_balancing_settle_count = 4
kernel.osrelease = 3.10.0-1160.15.2.el7.x86_64
kernel.ostype = Linux
kernel.overflowgid = 65534
kernel.overflowuid = 65534
kernel.panic = 0
kernel.panic_on_io_nmi = 0
kernel.panic_on_oops = 1
kernel.panic_on_stackoverflow = 0
kernel.panic_on_unrecovered_nmi = 0
kernel.panic_on_warn = 0
kernel.perf_cpu_time_max_percent = 25
kernel.perf_event_max_sample_rate = 100000
kernel.perf_event_mlock_kb = 516
kernel.perf_event_paranoid = 2
kernel.pid_max = 32768
kernel.poweroff_cmd = /sbin/poweroff
kernel.print-fatal-signals = 0
kernel.printk = 7       4       1       7
kernel.printk_delay = 0
kernel.printk_ratelimit = 5
kernel.printk_ratelimit_burst = 10
kernel.pty.max = 4096
kernel.pty.nr = 2
kernel.pty.reserve = 1024
kernel.random.boot_id = 2604d9fa-ab04-4120-a321-1ceab86c42ff
kernel.random.entropy_avail = 2424
kernel.random.poolsize = 4096
kernel.random.read_wakeup_threshold = 64
kernel.random.urandom_min_reseed_secs = 60
kernel.random.uuid = 261674fe-cc6b-478f-8e83-19e7e2552eb7
kernel.random.write_wakeup_threshold = 896
kernel.randomize_va_space = 2
kernel.real-root-dev = 0
kernel.sched_autogroup_enabled = 0
kernel.sched_cfs_bandwidth_slice_us = 5000
kernel.sched_child_runs_first = 0
kernel.sched_domain.cpu0.domain0.busy_factor = 32
kernel.sched_domain.cpu0.domain0.busy_idx = 0
kernel.sched_domain.cpu0.domain0.cache_nice_tries = 0
kernel.sched_domain.cpu0.domain0.flags = 687
kernel.sched_domain.cpu0.domain0.forkexec_idx = 0
kernel.sched_domain.cpu0.domain0.idle_idx = 0
kernel.sched_domain.cpu0.domain0.imbalance_pct = 110
kernel.sched_domain.cpu0.domain0.max_interval = 4
kernel.sched_domain.cpu0.domain0.max_newidle_lb_cost = 15760
kernel.sched_domain.cpu0.domain0.min_interval = 2
kernel.sched_domain.cpu0.domain0.name = SMT
kernel.sched_domain.cpu0.domain0.newidle_idx = 0
kernel.sched_domain.cpu0.domain0.wake_idx = 0
kernel.sched_domain.cpu1.domain0.busy_factor = 32
kernel.sched_domain.cpu1.domain0.busy_idx = 0
kernel.sched_domain.cpu1.domain0.cache_nice_tries = 0
kernel.sched_domain.cpu1.domain0.flags = 687
kernel.sched_domain.cpu1.domain0.forkexec_idx = 0
kernel.sched_domain.cpu1.domain0.idle_idx = 0
kernel.sched_domain.cpu1.domain0.imbalance_pct = 110
kernel.sched_domain.cpu1.domain0.max_interval = 4
kernel.sched_domain.cpu1.domain0.max_newidle_lb_cost = 11326
kernel.sched_domain.cpu1.domain0.min_interval = 2
kernel.sched_domain.cpu1.domain0.name = SMT
kernel.sched_domain.cpu1.domain0.newidle_idx = 0
kernel.sched_domain.cpu1.domain0.wake_idx = 0
kernel.sched_latency_ns = 12000000
kernel.sched_migration_cost_ns = 500000
kernel.sched_min_granularity_ns = 10000000
kernel.sched_nr_migrate = 32
kernel.sched_rr_timeslice_ms = 100
kernel.sched_rt_period_us = 1000000
kernel.sched_rt_runtime_us = 950000
kernel.sched_schedstats = 0
kernel.sched_shares_window_ns = 10000000
kernel.sched_time_avg_ms = 1000
kernel.sched_tunable_scaling = 1
kernel.sched_wakeup_granularity_ns = 15000000
kernel.seccomp.actions_avail = kill trap errno trace allow
kernel.seccomp.actions_logged = kill trap errno trace
kernel.sem = 250        32000   32      128
kernel.sem_next_id = -1
kernel.shm_next_id = -1
kernel.shm_rmid_forced = 0
kernel.shmall = 18446744073692774399
kernel.shmmax = 18446744073692774399
kernel.shmmni = 4096
kernel.softlockup_all_cpu_backtrace = 0
kernel.softlockup_panic = 0
kernel.stack_tracer_enabled = 0
kernel.sysctl_writes_strict = 1
kernel.sysrq = 16
kernel.tainted = 0
kernel.threads-max = 62404
kernel.timer_migration = 1
kernel.traceoff_on_warning = 0
kernel.unknown_nmi_panic = 0
kernel.usermodehelper.bset = 4294967295 31
kernel.usermodehelper.inheritable = 4294967295  31
kernel.version = #1 SMP Wed Feb 3 15:06:38 UTC 2021
kernel.watchdog = 1
kernel.watchdog_cpumask = 0-1
kernel.watchdog_thresh = 10
kernel.yama.ptrace_scope = 0
net.core.bpf_jit_enable = 1
net.core.bpf_jit_harden = 1
net.core.bpf_jit_kallsyms = 0
net.core.busy_poll = 0
net.core.busy_read = 0
net.core.default_qdisc = pfifo_fast
net.core.dev_weight = 64
net.core.dev_weight_rx_bias = 1
net.core.dev_weight_tx_bias = 1
net.core.message_burst = 10
net.core.message_cost = 5
net.core.netdev_budget = 300
net.core.netdev_max_backlog = 1000
net.core.netdev_rss_key = 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
net.core.netdev_tstamp_prequeue = 1
net.core.optmem_max = 20480
net.core.rmem_default = 212992
net.core.rmem_max = 212992
net.core.rps_sock_flow_entries = 8192
net.core.somaxconn = 1024
net.core.warnings = 1
net.core.wmem_default = 212992
net.core.wmem_max = 212992
net.core.xfrm_acq_expires = 30
net.core.xfrm_aevent_etime = 10
net.core.xfrm_aevent_rseqth = 2
net.core.xfrm_larval_drop = 1
net.ipv4.cipso_cache_bucket_size = 10
net.ipv4.cipso_cache_enable = 1
net.ipv4.cipso_rbm_optfmt = 0
net.ipv4.cipso_rbm_strictvalid = 1
net.ipv4.conf.all.accept_local = 0
net.ipv4.conf.all.accept_redirects = 1
net.ipv4.conf.all.accept_source_route = 0
net.ipv4.conf.all.arp_accept = 0
net.ipv4.conf.all.arp_announce = 0
net.ipv4.conf.all.arp_filter = 0
net.ipv4.conf.all.arp_ignore = 0
net.ipv4.conf.all.arp_notify = 0
net.ipv4.conf.all.bootp_relay = 0
net.ipv4.conf.all.disable_policy = 0
net.ipv4.conf.all.disable_xfrm = 0
net.ipv4.conf.all.force_igmp_version = 0
net.ipv4.conf.all.forwarding = 0
net.ipv4.conf.all.igmpv2_unsolicited_report_interval = 10000
net.ipv4.conf.all.igmpv3_unsolicited_report_interval = 1000
net.ipv4.conf.all.log_martians = 0
net.ipv4.conf.all.mc_forwarding = 0
net.ipv4.conf.all.medium_id = 0
net.ipv4.conf.all.promote_secondaries = 1
net.ipv4.conf.all.proxy_arp = 0
net.ipv4.conf.all.proxy_arp_pvlan = 0
net.ipv4.conf.all.route_localnet = 0
net.ipv4.conf.all.rp_filter = 1
net.ipv4.conf.all.secure_redirects = 1
net.ipv4.conf.all.send_redirects = 1
net.ipv4.conf.all.shared_media = 1
net.ipv4.conf.all.src_valid_mark = 0
net.ipv4.conf.all.tag = 0
net.ipv4.conf.default.accept_local = 0
net.ipv4.conf.default.accept_redirects = 1
net.ipv4.conf.default.accept_source_route = 0
net.ipv4.conf.default.arp_accept = 0
net.ipv4.conf.default.arp_announce = 0
net.ipv4.conf.default.arp_filter = 0
net.ipv4.conf.default.arp_ignore = 0
net.ipv4.conf.default.arp_notify = 0
net.ipv4.conf.default.bootp_relay = 0
net.ipv4.conf.default.disable_policy = 0
net.ipv4.conf.default.disable_xfrm = 0
net.ipv4.conf.default.force_igmp_version = 0
net.ipv4.conf.default.forwarding = 0
net.ipv4.conf.default.igmpv2_unsolicited_report_interval = 10000
net.ipv4.conf.default.igmpv3_unsolicited_report_interval = 1000
net.ipv4.conf.default.log_martians = 0
net.ipv4.conf.default.mc_forwarding = 0
net.ipv4.conf.default.medium_id = 0
net.ipv4.conf.default.promote_secondaries = 1
net.ipv4.conf.default.proxy_arp = 0
net.ipv4.conf.default.proxy_arp_pvlan = 0
net.ipv4.conf.default.route_localnet = 0
net.ipv4.conf.default.rp_filter = 1
net.ipv4.conf.default.secure_redirects = 1
net.ipv4.conf.default.send_redirects = 1
net.ipv4.conf.default.shared_media = 1
net.ipv4.conf.default.src_valid_mark = 0
net.ipv4.conf.default.tag = 0
net.ipv4.conf.eth0.accept_local = 0
net.ipv4.conf.eth0.accept_redirects = 1
net.ipv4.conf.eth0.accept_source_route = 0
net.ipv4.conf.eth0.arp_accept = 0
net.ipv4.conf.eth0.arp_announce = 0
net.ipv4.conf.eth0.arp_filter = 0
net.ipv4.conf.eth0.arp_ignore = 0
net.ipv4.conf.eth0.arp_notify = 0
net.ipv4.conf.eth0.bootp_relay = 0
net.ipv4.conf.eth0.disable_policy = 0
net.ipv4.conf.eth0.disable_xfrm = 0
net.ipv4.conf.eth0.force_igmp_version = 0
net.ipv4.conf.eth0.forwarding = 0
net.ipv4.conf.eth0.igmpv2_unsolicited_report_interval = 10000
net.ipv4.conf.eth0.igmpv3_unsolicited_report_interval = 1000
net.ipv4.conf.eth0.log_martians = 0
net.ipv4.conf.eth0.mc_forwarding = 0
net.ipv4.conf.eth0.medium_id = 0
net.ipv4.conf.eth0.promote_secondaries = 1
net.ipv4.conf.eth0.proxy_arp = 0
net.ipv4.conf.eth0.proxy_arp_pvlan = 0
net.ipv4.conf.eth0.route_localnet = 0
net.ipv4.conf.eth0.rp_filter = 1
net.ipv4.conf.eth0.secure_redirects = 1
net.ipv4.conf.eth0.send_redirects = 1
net.ipv4.conf.eth0.shared_media = 1
net.ipv4.conf.eth0.src_valid_mark = 0
net.ipv4.conf.eth0.tag = 0
net.ipv4.conf.lo.accept_local = 0
net.ipv4.conf.lo.accept_redirects = 1
net.ipv4.conf.lo.accept_source_route = 1
net.ipv4.conf.lo.arp_accept = 0
net.ipv4.conf.lo.arp_announce = 0
net.ipv4.conf.lo.arp_filter = 0
net.ipv4.conf.lo.arp_ignore = 0
net.ipv4.conf.lo.arp_notify = 0
net.ipv4.conf.lo.bootp_relay = 0
net.ipv4.conf.lo.disable_policy = 1
net.ipv4.conf.lo.disable_xfrm = 1
net.ipv4.conf.lo.force_igmp_version = 0
net.ipv4.conf.lo.forwarding = 0
net.ipv4.conf.lo.igmpv2_unsolicited_report_interval = 10000
net.ipv4.conf.lo.igmpv3_unsolicited_report_interval = 1000
net.ipv4.conf.lo.log_martians = 0
net.ipv4.conf.lo.mc_forwarding = 0
net.ipv4.conf.lo.medium_id = 0
net.ipv4.conf.lo.promote_secondaries = 0
net.ipv4.conf.lo.proxy_arp = 0
net.ipv4.conf.lo.proxy_arp_pvlan = 0
net.ipv4.conf.lo.route_localnet = 0
net.ipv4.conf.lo.rp_filter = 0
net.ipv4.conf.lo.secure_redirects = 1
net.ipv4.conf.lo.send_redirects = 1
net.ipv4.conf.lo.shared_media = 1
net.ipv4.conf.lo.src_valid_mark = 0
net.ipv4.conf.lo.tag = 0
net.ipv4.fib_multipath_hash_policy = 0
net.ipv4.fwmark_reflect = 0
net.ipv4.icmp_echo_ignore_all = 0
net.ipv4.icmp_echo_ignore_broadcasts = 1
net.ipv4.icmp_errors_use_inbound_ifaddr = 0
net.ipv4.icmp_ignore_bogus_error_responses = 1
net.ipv4.icmp_msgs_burst = 50
net.ipv4.icmp_msgs_per_sec = 1000
net.ipv4.icmp_ratelimit = 1000
net.ipv4.icmp_ratemask = 6168
net.ipv4.igmp_max_memberships = 20
net.ipv4.igmp_max_msf = 10
net.ipv4.igmp_qrv = 2
net.ipv4.inet_peer_maxttl = 600
net.ipv4.inet_peer_minttl = 120
net.ipv4.inet_peer_threshold = 65664
net.ipv4.ip_default_ttl = 64
net.ipv4.ip_dynaddr = 0
net.ipv4.ip_early_demux = 1
net.ipv4.ip_forward = 0
net.ipv4.ip_forward_use_pmtu = 0
net.ipv4.ip_local_port_range = 32768    60999
net.ipv4.ip_local_reserved_ports =
net.ipv4.ip_no_pmtu_disc = 0
net.ipv4.ip_nonlocal_bind = 0
net.ipv4.ipfrag_high_thresh = 4194304
net.ipv4.ipfrag_low_thresh = 3145728
net.ipv4.ipfrag_max_dist = 64
net.ipv4.ipfrag_secret_interval = 600
net.ipv4.ipfrag_time = 30
net.ipv4.neigh.default.anycast_delay = 100
net.ipv4.neigh.default.app_solicit = 0
net.ipv4.neigh.default.base_reachable_time_ms = 30000
net.ipv4.neigh.default.delay_first_probe_time = 5
net.ipv4.neigh.default.gc_interval = 30
net.ipv4.neigh.default.gc_stale_time = 60
net.ipv4.neigh.default.gc_thresh1 = 128
net.ipv4.neigh.default.gc_thresh2 = 512
net.ipv4.neigh.default.gc_thresh3 = 1024
net.ipv4.neigh.default.locktime = 100
net.ipv4.neigh.default.mcast_solicit = 3
net.ipv4.neigh.default.proxy_delay = 80
net.ipv4.neigh.default.proxy_qlen = 64
net.ipv4.neigh.default.retrans_time_ms = 1000
net.ipv4.neigh.default.ucast_solicit = 3
net.ipv4.neigh.default.unres_qlen = 31
net.ipv4.neigh.default.unres_qlen_bytes = 65536
net.ipv4.neigh.eth0.anycast_delay = 100
net.ipv4.neigh.eth0.app_solicit = 0
net.ipv4.neigh.eth0.base_reachable_time_ms = 30000
net.ipv4.neigh.eth0.delay_first_probe_time = 5
net.ipv4.neigh.eth0.gc_stale_time = 60
net.ipv4.neigh.eth0.locktime = 100
net.ipv4.neigh.eth0.mcast_solicit = 3
net.ipv4.neigh.eth0.proxy_delay = 80
net.ipv4.neigh.eth0.proxy_qlen = 64
net.ipv4.neigh.eth0.retrans_time_ms = 1000
net.ipv4.neigh.eth0.ucast_solicit = 3
net.ipv4.neigh.eth0.unres_qlen = 31
net.ipv4.neigh.eth0.unres_qlen_bytes = 65536
net.ipv4.neigh.lo.anycast_delay = 100
net.ipv4.neigh.lo.app_solicit = 0
net.ipv4.neigh.lo.base_reachable_time_ms = 30000
net.ipv4.neigh.lo.delay_first_probe_time = 5
net.ipv4.neigh.lo.gc_stale_time = 60
net.ipv4.neigh.lo.locktime = 100
net.ipv4.neigh.lo.mcast_solicit = 3
net.ipv4.neigh.lo.proxy_delay = 80
net.ipv4.neigh.lo.proxy_qlen = 64
net.ipv4.neigh.lo.retrans_time_ms = 1000
net.ipv4.neigh.lo.ucast_solicit = 3
net.ipv4.neigh.lo.unres_qlen = 31
net.ipv4.neigh.lo.unres_qlen_bytes = 65536
net.ipv4.ping_group_range = 1   0
net.ipv4.route.error_burst = 5000
net.ipv4.route.error_cost = 1000
net.ipv4.route.gc_elasticity = 8
net.ipv4.route.gc_interval = 60
net.ipv4.route.gc_min_interval = 0
net.ipv4.route.gc_min_interval_ms = 500
net.ipv4.route.gc_thresh = -1
net.ipv4.route.gc_timeout = 300
net.ipv4.route.max_size = 2147483647
net.ipv4.route.min_adv_mss = 256
net.ipv4.route.min_pmtu = 552
net.ipv4.route.mtu_expires = 600
net.ipv4.route.redirect_load = 20
net.ipv4.route.redirect_number = 9
net.ipv4.route.redirect_silence = 20480
net.ipv4.tcp_abort_on_overflow = 0
net.ipv4.tcp_adv_win_scale = 1
net.ipv4.tcp_allowed_congestion_control = cubic reno
net.ipv4.tcp_app_win = 31
net.ipv4.tcp_autocorking = 1
net.ipv4.tcp_available_congestion_control = cubic reno
net.ipv4.tcp_base_mss = 512
net.ipv4.tcp_challenge_ack_limit = 1000
net.ipv4.tcp_congestion_control = cubic
net.ipv4.tcp_dsack = 1
net.ipv4.tcp_early_retrans = 3
net.ipv4.tcp_ecn = 2
net.ipv4.tcp_fack = 1
net.ipv4.tcp_fastopen = 0
net.ipv4.tcp_fastopen_key = 00000000-00000000-00000000-00000000
net.ipv4.tcp_fin_timeout = 60
net.ipv4.tcp_frto = 2
net.ipv4.tcp_invalid_ratelimit = 500
net.ipv4.tcp_keepalive_intvl = 75
net.ipv4.tcp_keepalive_probes = 9
net.ipv4.tcp_keepalive_time = 7200
net.ipv4.tcp_limit_output_bytes = 262144
net.ipv4.tcp_low_latency = 0
net.ipv4.tcp_max_orphans = 32768
net.ipv4.tcp_max_ssthresh = 0
net.ipv4.tcp_max_syn_backlog = 1024
net.ipv4.tcp_max_tw_buckets = 5000
net.ipv4.tcp_mem = 185256       247009  370512
net.ipv4.tcp_min_snd_mss = 48
net.ipv4.tcp_min_tso_segs = 2
net.ipv4.tcp_moderate_rcvbuf = 1
net.ipv4.tcp_mtu_probing = 0
net.ipv4.tcp_no_metrics_save = 0
net.ipv4.tcp_notsent_lowat = -1
net.ipv4.tcp_orphan_retries = 0
net.ipv4.tcp_reordering = 3
net.ipv4.tcp_retrans_collapse = 1
net.ipv4.tcp_retries1 = 3
net.ipv4.tcp_retries2 = 15
net.ipv4.tcp_rfc1337 = 0
net.ipv4.tcp_rmem = 4096        87380   6291456
net.ipv4.tcp_sack = 1
net.ipv4.tcp_slow_start_after_idle = 1
net.ipv4.tcp_stdurg = 0
net.ipv4.tcp_syn_retries = 6
net.ipv4.tcp_synack_retries = 5
net.ipv4.tcp_syncookies = 1
net.ipv4.tcp_thin_dupack = 0
net.ipv4.tcp_thin_linear_timeouts = 0
net.ipv4.tcp_timestamps = 1
net.ipv4.tcp_tso_win_divisor = 3
net.ipv4.tcp_tw_recycle = 0
net.ipv4.tcp_tw_reuse = 0
net.ipv4.tcp_window_scaling = 1
net.ipv4.tcp_wmem = 4096        16384   4194304
net.ipv4.tcp_workaround_signed_windows = 0
net.ipv4.udp_mem = 187212       249618  374424
net.ipv4.udp_rmem_min = 4096
net.ipv4.udp_wmem_min = 4096
net.ipv4.xfrm4_gc_thresh = 32768
net.ipv6.anycast_src_echo_reply = 0
net.ipv6.bindv6only = 0
net.ipv6.conf.all.accept_dad = 0
net.ipv6.conf.all.accept_ra = 1
net.ipv6.conf.all.accept_ra_defrtr = 1
net.ipv6.conf.all.accept_ra_pinfo = 1
net.ipv6.conf.all.accept_ra_rt_info_max_plen = 0
net.ipv6.conf.all.accept_ra_rtr_pref = 1
net.ipv6.conf.all.accept_redirects = 1
net.ipv6.conf.all.accept_source_route = 0
net.ipv6.conf.all.autoconf = 1
net.ipv6.conf.all.dad_transmits = 1
net.ipv6.conf.all.disable_ipv6 = 0
net.ipv6.conf.all.enhanced_dad = 1
net.ipv6.conf.all.force_mld_version = 0
net.ipv6.conf.all.force_tllao = 0
net.ipv6.conf.all.forwarding = 0
net.ipv6.conf.all.hop_limit = 64
net.ipv6.conf.all.keep_addr_on_down = 0
net.ipv6.conf.all.max_addresses = 16
net.ipv6.conf.all.max_desync_factor = 600
net.ipv6.conf.all.mc_forwarding = 0
net.ipv6.conf.all.mldv1_unsolicited_report_interval = 10000
net.ipv6.conf.all.mldv2_unsolicited_report_interval = 1000
net.ipv6.conf.all.mtu = 1280
net.ipv6.conf.all.ndisc_notify = 0
net.ipv6.conf.all.optimistic_dad = 0
net.ipv6.conf.all.proxy_ndp = 0
net.ipv6.conf.all.regen_max_retry = 3
net.ipv6.conf.all.router_probe_interval = 60
net.ipv6.conf.all.router_solicitation_delay = 1
net.ipv6.conf.all.router_solicitation_interval = 4
net.ipv6.conf.all.router_solicitations = 3
sysctl: reading key "net.ipv6.conf.all.stable_secret"
net.ipv6.conf.all.temp_prefered_lft = 86400
net.ipv6.conf.all.temp_valid_lft = 604800
net.ipv6.conf.all.use_optimistic = 0
net.ipv6.conf.all.use_tempaddr = 0
net.ipv6.conf.default.accept_dad = 1
net.ipv6.conf.default.accept_ra = 1
net.ipv6.conf.default.accept_ra_defrtr = 1
net.ipv6.conf.default.accept_ra_pinfo = 1
net.ipv6.conf.default.accept_ra_rt_info_max_plen = 0
net.ipv6.conf.default.accept_ra_rtr_pref = 1
net.ipv6.conf.default.accept_redirects = 1
net.ipv6.conf.default.accept_source_route = 0
net.ipv6.conf.default.autoconf = 1
net.ipv6.conf.default.dad_transmits = 1
net.ipv6.conf.default.disable_ipv6 = 0
net.ipv6.conf.default.enhanced_dad = 1
net.ipv6.conf.default.force_mld_version = 0
net.ipv6.conf.default.force_tllao = 0
net.ipv6.conf.default.forwarding = 0
net.ipv6.conf.default.hop_limit = 64
net.ipv6.conf.default.keep_addr_on_down = 0
net.ipv6.conf.default.max_addresses = 16
net.ipv6.conf.default.max_desync_factor = 600
net.ipv6.conf.default.mc_forwarding = 0
net.ipv6.conf.default.mldv1_unsolicited_report_interval = 10000
net.ipv6.conf.default.mldv2_unsolicited_report_interval = 1000
net.ipv6.conf.default.mtu = 1280
net.ipv6.conf.default.ndisc_notify = 0
net.ipv6.conf.default.optimistic_dad = 0
net.ipv6.conf.default.proxy_ndp = 0
net.ipv6.conf.default.regen_max_retry = 3
net.ipv6.conf.default.router_probe_interval = 60
net.ipv6.conf.default.router_solicitation_delay = 1
net.ipv6.conf.default.router_solicitation_interval = 4
net.ipv6.conf.default.router_solicitations = 3
sysctl: reading key "net.ipv6.conf.default.stable_secret"
net.ipv6.conf.default.temp_prefered_lft = 86400
net.ipv6.conf.default.temp_valid_lft = 604800
net.ipv6.conf.default.use_optimistic = 0
net.ipv6.conf.default.use_tempaddr = 0
net.ipv6.conf.eth0.accept_dad = 1
net.ipv6.conf.eth0.accept_ra = 1
net.ipv6.conf.eth0.accept_ra_defrtr = 1
net.ipv6.conf.eth0.accept_ra_pinfo = 1
net.ipv6.conf.eth0.accept_ra_rt_info_max_plen = 0
net.ipv6.conf.eth0.accept_ra_rtr_pref = 1
net.ipv6.conf.eth0.accept_redirects = 1
net.ipv6.conf.eth0.accept_source_route = 0
net.ipv6.conf.eth0.autoconf = 1
net.ipv6.conf.eth0.dad_transmits = 1
net.ipv6.conf.eth0.disable_ipv6 = 0
net.ipv6.conf.eth0.enhanced_dad = 1
net.ipv6.conf.eth0.force_mld_version = 0
net.ipv6.conf.eth0.force_tllao = 0
net.ipv6.conf.eth0.forwarding = 0
net.ipv6.conf.eth0.hop_limit = 64
net.ipv6.conf.eth0.keep_addr_on_down = 0
net.ipv6.conf.eth0.max_addresses = 16
net.ipv6.conf.eth0.max_desync_factor = 600
net.ipv6.conf.eth0.mc_forwarding = 0
net.ipv6.conf.eth0.mldv1_unsolicited_report_interval = 10000
net.ipv6.conf.eth0.mldv2_unsolicited_report_interval = 1000
net.ipv6.conf.eth0.mtu = 1500
net.ipv6.conf.eth0.ndisc_notify = 0
net.ipv6.conf.eth0.optimistic_dad = 0
net.ipv6.conf.eth0.proxy_ndp = 0
net.ipv6.conf.eth0.regen_max_retry = 3
net.ipv6.conf.eth0.router_probe_interval = 60
net.ipv6.conf.eth0.router_solicitation_delay = 1
net.ipv6.conf.eth0.router_solicitation_interval = 4
net.ipv6.conf.eth0.router_solicitations = 3
sysctl: reading key "net.ipv6.conf.eth0.stable_secret"
net.ipv6.conf.eth0.temp_prefered_lft = 86400
net.ipv6.conf.eth0.temp_valid_lft = 604800
net.ipv6.conf.eth0.use_optimistic = 0
net.ipv6.conf.eth0.use_tempaddr = 0
net.ipv6.conf.lo.accept_dad = -1
net.ipv6.conf.lo.accept_ra = 1
net.ipv6.conf.lo.accept_ra_defrtr = 1
net.ipv6.conf.lo.accept_ra_pinfo = 1
net.ipv6.conf.lo.accept_ra_rt_info_max_plen = 0
net.ipv6.conf.lo.accept_ra_rtr_pref = 1
net.ipv6.conf.lo.accept_redirects = 1
net.ipv6.conf.lo.accept_source_route = 0
net.ipv6.conf.lo.autoconf = 1
net.ipv6.conf.lo.dad_transmits = 1
net.ipv6.conf.lo.disable_ipv6 = 0
net.ipv6.conf.lo.enhanced_dad = 1
net.ipv6.conf.lo.force_mld_version = 0
net.ipv6.conf.lo.force_tllao = 0
net.ipv6.conf.lo.forwarding = 0
net.ipv6.conf.lo.hop_limit = 64
net.ipv6.conf.lo.keep_addr_on_down = 0
net.ipv6.conf.lo.max_addresses = 16
net.ipv6.conf.lo.max_desync_factor = 600
net.ipv6.conf.lo.mc_forwarding = 0
net.ipv6.conf.lo.mldv1_unsolicited_report_interval = 10000
net.ipv6.conf.lo.mldv2_unsolicited_report_interval = 1000
net.ipv6.conf.lo.mtu = 65536
net.ipv6.conf.lo.ndisc_notify = 0
net.ipv6.conf.lo.optimistic_dad = 0
net.ipv6.conf.lo.proxy_ndp = 0
net.ipv6.conf.lo.regen_max_retry = 3
net.ipv6.conf.lo.router_probe_interval = 60
net.ipv6.conf.lo.router_solicitation_delay = 1
net.ipv6.conf.lo.router_solicitation_interval = 4
net.ipv6.conf.lo.router_solicitations = 3
sysctl: reading key "net.ipv6.conf.lo.stable_secret"
net.ipv6.conf.lo.temp_prefered_lft = 86400
net.ipv6.conf.lo.temp_valid_lft = 604800
net.ipv6.conf.lo.use_optimistic = 0
net.ipv6.conf.lo.use_tempaddr = -1
net.ipv6.fwmark_reflect = 0
net.ipv6.icmp.ratelimit = 1000
net.ipv6.idgen_delay = 1
net.ipv6.idgen_retries = 3
net.ipv6.ip6frag_high_thresh = 4194304
net.ipv6.ip6frag_low_thresh = 3145728
net.ipv6.ip6frag_secret_interval = 600
net.ipv6.ip6frag_time = 60
net.ipv6.ip_nonlocal_bind = 0
net.ipv6.mld_max_msf = 64
net.ipv6.mld_qrv = 2
net.ipv6.neigh.default.anycast_delay = 100
net.ipv6.neigh.default.app_solicit = 0
net.ipv6.neigh.default.base_reachable_time_ms = 30000
net.ipv6.neigh.default.delay_first_probe_time = 5
net.ipv6.neigh.default.gc_interval = 30
net.ipv6.neigh.default.gc_stale_time = 60
net.ipv6.neigh.default.gc_thresh1 = 128
net.ipv6.neigh.default.gc_thresh2 = 512
net.ipv6.neigh.default.gc_thresh3 = 1024
net.ipv6.neigh.default.locktime = 0
net.ipv6.neigh.default.mcast_solicit = 3
net.ipv6.neigh.default.proxy_delay = 80
net.ipv6.neigh.default.proxy_qlen = 64
net.ipv6.neigh.default.retrans_time_ms = 1000
net.ipv6.neigh.default.ucast_solicit = 3
net.ipv6.neigh.default.unres_qlen = 31
net.ipv6.neigh.default.unres_qlen_bytes = 65536
net.ipv6.neigh.eth0.anycast_delay = 100
net.ipv6.neigh.eth0.app_solicit = 0
net.ipv6.neigh.eth0.base_reachable_time_ms = 30000
net.ipv6.neigh.eth0.delay_first_probe_time = 5
net.ipv6.neigh.eth0.gc_stale_time = 60
net.ipv6.neigh.eth0.locktime = 0
net.ipv6.neigh.eth0.mcast_solicit = 3
net.ipv6.neigh.eth0.proxy_delay = 80
net.ipv6.neigh.eth0.proxy_qlen = 64
net.ipv6.neigh.eth0.retrans_time_ms = 1000
net.ipv6.neigh.eth0.ucast_solicit = 3
net.ipv6.neigh.eth0.unres_qlen = 31
net.ipv6.neigh.eth0.unres_qlen_bytes = 65536
net.ipv6.neigh.lo.anycast_delay = 100
net.ipv6.neigh.lo.app_solicit = 0
net.ipv6.neigh.lo.base_reachable_time_ms = 30000
net.ipv6.neigh.lo.delay_first_probe_time = 5
net.ipv6.neigh.lo.gc_stale_time = 60
net.ipv6.neigh.lo.locktime = 0
net.ipv6.neigh.lo.mcast_solicit = 3
net.ipv6.neigh.lo.proxy_delay = 80
net.ipv6.neigh.lo.proxy_qlen = 64
net.ipv6.neigh.lo.retrans_time_ms = 1000
net.ipv6.neigh.lo.ucast_solicit = 3
net.ipv6.neigh.lo.unres_qlen = 31
net.ipv6.neigh.lo.unres_qlen_bytes = 65536
net.ipv6.route.gc_elasticity = 9
net.ipv6.route.gc_interval = 30
net.ipv6.route.gc_min_interval = 0
net.ipv6.route.gc_min_interval_ms = 500
net.ipv6.route.gc_thresh = 1024
net.ipv6.route.gc_timeout = 60
net.ipv6.route.max_size = 16384
net.ipv6.route.min_adv_mss = 1220
net.ipv6.route.mtu_expires = 600
net.ipv6.xfrm6_gc_thresh = 32768
net.netfilter.nf_conntrack_acct = 0
net.netfilter.nf_conntrack_buckets = 65536
net.netfilter.nf_conntrack_checksum = 1
net.netfilter.nf_conntrack_count = 147
net.netfilter.nf_conntrack_dccp_loose = 1
net.netfilter.nf_conntrack_dccp_timeout_closereq = 64
net.netfilter.nf_conntrack_dccp_timeout_closing = 64
net.netfilter.nf_conntrack_dccp_timeout_open = 43200
net.netfilter.nf_conntrack_dccp_timeout_partopen = 480
net.netfilter.nf_conntrack_dccp_timeout_request = 240
net.netfilter.nf_conntrack_dccp_timeout_respond = 480
net.netfilter.nf_conntrack_dccp_timeout_timewait = 240
net.netfilter.nf_conntrack_events = 1
net.netfilter.nf_conntrack_events_retry_timeout = 15
net.netfilter.nf_conntrack_expect_max = 1024
net.netfilter.nf_conntrack_generic_timeout = 600
net.netfilter.nf_conntrack_helper = 1
net.netfilter.nf_conntrack_icmp_timeout = 30
net.netfilter.nf_conntrack_log_invalid = 0
net.netfilter.nf_conntrack_max = 262144
net.netfilter.nf_conntrack_sctp_timeout_closed = 10
net.netfilter.nf_conntrack_sctp_timeout_cookie_echoed = 3
net.netfilter.nf_conntrack_sctp_timeout_cookie_wait = 3
net.netfilter.nf_conntrack_sctp_timeout_established = 432000
net.netfilter.nf_conntrack_sctp_timeout_heartbeat_acked = 210
net.netfilter.nf_conntrack_sctp_timeout_heartbeat_sent = 30
net.netfilter.nf_conntrack_sctp_timeout_shutdown_ack_sent = 3
net.netfilter.nf_conntrack_sctp_timeout_shutdown_recd = 0
net.netfilter.nf_conntrack_sctp_timeout_shutdown_sent = 0
net.netfilter.nf_conntrack_tcp_be_liberal = 0
net.netfilter.nf_conntrack_tcp_loose = 1
net.netfilter.nf_conntrack_tcp_max_retrans = 3
net.netfilter.nf_conntrack_tcp_timeout_close = 10
net.netfilter.nf_conntrack_tcp_timeout_close_wait = 60
net.netfilter.nf_conntrack_tcp_timeout_established = 432000
net.netfilter.nf_conntrack_tcp_timeout_fin_wait = 120
net.netfilter.nf_conntrack_tcp_timeout_last_ack = 30
net.netfilter.nf_conntrack_tcp_timeout_max_retrans = 300
net.netfilter.nf_conntrack_tcp_timeout_syn_recv = 60
net.netfilter.nf_conntrack_tcp_timeout_syn_sent = 120
net.netfilter.nf_conntrack_tcp_timeout_time_wait = 120
net.netfilter.nf_conntrack_tcp_timeout_unacknowledged = 300
net.netfilter.nf_conntrack_timestamp = 0
net.netfilter.nf_conntrack_udp_timeout = 30
net.netfilter.nf_conntrack_udp_timeout_stream = 180
net.netfilter.nf_log.0 = NONE
net.netfilter.nf_log.1 = NONE
net.netfilter.nf_log.10 = NONE
net.netfilter.nf_log.11 = NONE
net.netfilter.nf_log.12 = NONE
net.netfilter.nf_log.2 = NONE
net.netfilter.nf_log.3 = NONE
net.netfilter.nf_log.4 = NONE
net.netfilter.nf_log.5 = NONE
net.netfilter.nf_log.6 = NONE
net.netfilter.nf_log.7 = NONE
net.netfilter.nf_log.8 = NONE
net.netfilter.nf_log.9 = NONE
net.netfilter.nf_log_all_netns = 0
net.nf_conntrack_max = 262144
net.unix.max_dgram_qlen = 512
user.max_ipc_namespaces = 31202
user.max_mnt_namespaces = 31202
user.max_net_namespaces = 31202
user.max_pid_namespaces = 31202
user.max_user_namespaces = 0
user.max_uts_namespaces = 31202
vm.admin_reserve_kbytes = 8192
vm.block_dump = 0
vm.dirty_background_bytes = 0
vm.dirty_background_ratio = 10
vm.dirty_bytes = 0
vm.dirty_expire_centisecs = 3000
vm.dirty_ratio = 30
vm.dirty_writeback_centisecs = 500
vm.drop_caches = 0
vm.extfrag_threshold = 500
vm.hugepages_treat_as_movable = 0
vm.hugetlb_shm_group = 0
vm.laptop_mode = 0
vm.legacy_va_layout = 0
vm.lowmem_reserve_ratio = 256   256     32
vm.max_map_count = 65530
vm.memory_failure_early_kill = 0
vm.memory_failure_recovery = 1
vm.min_free_kbytes = 67584
vm.min_slab_ratio = 5
vm.min_unmapped_ratio = 1
vm.mmap_min_addr = 4096
vm.mmap_rnd_bits = 28
vm.mmap_rnd_compat_bits = 8
vm.nr_hugepages = 0
vm.nr_hugepages_mempolicy = 0
vm.nr_overcommit_hugepages = 0
vm.nr_pdflush_threads = 0
vm.numa_zonelist_order = default
vm.oom_dump_tasks = 1
vm.oom_kill_allocating_task = 0
vm.overcommit_kbytes = 0
vm.overcommit_memory = 0
vm.overcommit_ratio = 50
vm.page-cluster = 3
vm.panic_on_oom = 0
vm.percpu_pagelist_fraction = 0
vm.stat_interval = 1
vm.swappiness = 0
vm.user_reserve_kbytes = 131072
vm.vfs_cache_pressure = 100
vm.zone_reclaim_mode = 0

----->>>---->>>  mount ��̬������Ϣ:
sysfs on /sys type sysfs (rw,nosuid,nodev,noexec,relatime)
proc on /proc type proc (rw,nosuid,nodev,noexec,relatime)
devtmpfs on /dev type devtmpfs (rw,nosuid,size=3993900k,nr_inodes=998475,mode=755)
securityfs on /sys/kernel/security type securityfs (rw,nosuid,nodev,noexec,relatime)
tmpfs on /dev/shm type tmpfs (rw,nosuid,nodev)
devpts on /dev/pts type devpts (rw,nosuid,noexec,relatime,gid=5,mode=620,ptmxmode=000)
tmpfs on /run type tmpfs (rw,nosuid,nodev,mode=755)
tmpfs on /sys/fs/cgroup type tmpfs (ro,nosuid,nodev,noexec,mode=755)
cgroup on /sys/fs/cgroup/systemd type cgroup (rw,nosuid,nodev,noexec,relatime,xattr,release_agent=/usr/lib/systemd/systemd-cgroups-agent,name=systemd)
pstore on /sys/fs/pstore type pstore (rw,nosuid,nodev,noexec,relatime)
cgroup on /sys/fs/cgroup/cpu,cpuacct type cgroup (rw,nosuid,nodev,noexec,relatime,cpuacct,cpu)
cgroup on /sys/fs/cgroup/hugetlb type cgroup (rw,nosuid,nodev,noexec,relatime,hugetlb)
cgroup on /sys/fs/cgroup/net_cls,net_prio type cgroup (rw,nosuid,nodev,noexec,relatime,net_prio,net_cls)
cgroup on /sys/fs/cgroup/perf_event type cgroup (rw,nosuid,nodev,noexec,relatime,perf_event)
cgroup on /sys/fs/cgroup/devices type cgroup (rw,nosuid,nodev,noexec,relatime,devices)
cgroup on /sys/fs/cgroup/memory type cgroup (rw,nosuid,nodev,noexec,relatime,memory)
cgroup on /sys/fs/cgroup/blkio type cgroup (rw,nosuid,nodev,noexec,relatime,blkio)
cgroup on /sys/fs/cgroup/freezer type cgroup (rw,nosuid,nodev,noexec,relatime,freezer)
cgroup on /sys/fs/cgroup/pids type cgroup (rw,nosuid,nodev,noexec,relatime,pids)
cgroup on /sys/fs/cgroup/cpuset type cgroup (rw,nosuid,nodev,noexec,relatime,cpuset)
configfs on /sys/kernel/config type configfs (rw,relatime)
/dev/vda1 on / type ext4 (rw,relatime,data=ordered)
systemd-1 on /proc/sys/fs/binfmt_misc type autofs (rw,relatime,fd=22,pgrp=1,timeout=0,minproto=5,maxproto=5,direct,pipe_ino=10851)
hugetlbfs on /dev/hugepages type hugetlbfs (rw,relatime)
debugfs on /sys/kernel/debug type debugfs (rw,relatime)
mqueue on /dev/mqueue type mqueue (rw,relatime)
tmpfs on /run/user/0 type tmpfs (rw,nosuid,nodev,relatime,size=800860k,mode=700)
binfmt_misc on /proc/sys/fs/binfmt_misc type binfmt_misc (rw,relatime)

----->>>---->>>  selinux ��̬������Ϣ:
getsebool:  SELinux is disabled
SELinux status:                 disabled

----->>>---->>>  �������Transparent Huge Pages (THP):
[always] madvise never
[always] madvise never

----->>>---->>>  Ӳ��SMART��Ϣ(��Ҫroot):
/home/atlasdb/scripts/generate_report.sh: line 135: smartctl: command not found

----->>>---->>>  /var/log/boot.log

----->>>---->>>  /var/log/cron(��Ҫroot)
Aug 29 03:47:01 db03 run-parts(/etc/cron.daily)[5901]: finished logrotate
Aug 29 03:47:01 db03 run-parts(/etc/cron.daily)[5889]: starting man-db.cron
Aug 29 03:47:04 db03 run-parts(/etc/cron.daily)[13647]: finished man-db.cron
Aug 29 03:47:04 db03 run-parts(/etc/cron.daily)[5889]: starting mlocate
Aug 29 03:47:09 db03 run-parts(/etc/cron.daily)[13658]: finished mlocate
Aug 29 03:47:09 db03 anacron[5718]: Job `cron.daily' terminated
Aug 29 03:47:09 db03 anacron[5718]: Normal exit (1 job run)
Aug 29 04:01:01 db03 CROND[13690]: (root) CMD (run-parts /etc/cron.hourly)
Aug 29 04:01:01 db03 run-parts(/etc/cron.hourly)[13690]: starting 0anacron
Aug 29 04:01:01 db03 run-parts(/etc/cron.hourly)[13699]: finished 0anacron
Aug 29 05:01:01 db03 CROND[13884]: (root) CMD (run-parts /etc/cron.hourly)
Aug 29 05:01:01 db03 run-parts(/etc/cron.hourly)[13884]: starting 0anacron
Aug 29 05:01:01 db03 run-parts(/etc/cron.hourly)[13893]: finished 0anacron
Aug 29 06:01:01 db03 CROND[14073]: (root) CMD (run-parts /etc/cron.hourly)
Aug 29 06:01:01 db03 run-parts(/etc/cron.hourly)[14073]: starting 0anacron
Aug 29 06:01:01 db03 run-parts(/etc/cron.hourly)[14082]: finished 0anacron
Aug 29 07:01:01 db03 CROND[14267]: (root) CMD (run-parts /etc/cron.hourly)
Aug 29 07:01:01 db03 run-parts(/etc/cron.hourly)[14267]: starting 0anacron
Aug 29 07:01:01 db03 run-parts(/etc/cron.hourly)[14276]: finished 0anacron
Aug 29 08:01:01 db03 CROND[14458]: (root) CMD (run-parts /etc/cron.hourly)
Aug 29 08:01:01 db03 run-parts(/etc/cron.hourly)[14458]: starting 0anacron
Aug 29 08:01:01 db03 run-parts(/etc/cron.hourly)[14467]: finished 0anacron
Aug 29 09:01:01 db03 CROND[14650]: (root) CMD (run-parts /etc/cron.hourly)
Aug 29 09:01:01 db03 run-parts(/etc/cron.hourly)[14650]: starting 0anacron
Aug 29 09:01:01 db03 run-parts(/etc/cron.hourly)[14659]: finished 0anacron
Aug 29 10:01:01 db03 CROND[14840]: (root) CMD (run-parts /etc/cron.hourly)
Aug 29 10:01:01 db03 run-parts(/etc/cron.hourly)[14840]: starting 0anacron
Aug 29 10:01:01 db03 run-parts(/etc/cron.hourly)[14849]: finished 0anacron
Aug 29 11:01:01 db03 CROND[15030]: (root) CMD (run-parts /etc/cron.hourly)
Aug 29 11:01:01 db03 run-parts(/etc/cron.hourly)[15030]: starting 0anacron
Aug 29 11:01:01 db03 run-parts(/etc/cron.hourly)[15039]: finished 0anacron
Aug 29 12:01:01 db03 CROND[15222]: (root) CMD (run-parts /etc/cron.hourly)
Aug 29 12:01:01 db03 run-parts(/etc/cron.hourly)[15222]: starting 0anacron
Aug 29 12:01:01 db03 run-parts(/etc/cron.hourly)[15231]: finished 0anacron
Aug 29 13:01:01 db03 CROND[15414]: (root) CMD (run-parts /etc/cron.hourly)
Aug 29 13:01:01 db03 run-parts(/etc/cron.hourly)[15414]: starting 0anacron
Aug 29 13:01:01 db03 run-parts(/etc/cron.hourly)[15423]: finished 0anacron
Aug 29 14:01:01 db03 CROND[15626]: (root) CMD (run-parts /etc/cron.hourly)
Aug 29 14:01:01 db03 run-parts(/etc/cron.hourly)[15626]: starting 0anacron
Aug 29 14:01:01 db03 run-parts(/etc/cron.hourly)[15635]: finished 0anacron
Aug 29 15:01:01 db03 CROND[15816]: (root) CMD (run-parts /etc/cron.hourly)
Aug 29 15:01:01 db03 run-parts(/etc/cron.hourly)[15816]: starting 0anacron
Aug 29 15:01:01 db03 run-parts(/etc/cron.hourly)[15825]: finished 0anacron
Aug 29 16:01:01 db03 CROND[16777]: (root) CMD (run-parts /etc/cron.hourly)
Aug 29 16:01:01 db03 run-parts(/etc/cron.hourly)[16777]: starting 0anacron
Aug 29 16:01:01 db03 run-parts(/etc/cron.hourly)[16786]: finished 0anacron
Aug 29 17:01:01 db03 CROND[18075]: (root) CMD (run-parts /etc/cron.hourly)
Aug 29 17:01:01 db03 run-parts(/etc/cron.hourly)[18075]: starting 0anacron
Aug 29 17:01:01 db03 run-parts(/etc/cron.hourly)[18084]: finished 0anacron
Aug 29 17:04:57 db03 crontab[18123]: (atlasdb) BEGIN EDIT (atlasdb)
Aug 29 17:05:00 db03 crontab[18123]: (atlasdb) REPLACE (atlasdb)
Aug 29 17:05:00 db03 crontab[18123]: (atlasdb) END EDIT (atlasdb)
Aug 29 18:01:01 db03 CROND[18421]: (root) CMD (run-parts /etc/cron.hourly)
Aug 29 18:01:01 db03 run-parts(/etc/cron.hourly)[18421]: starting 0anacron
Aug 29 18:01:01 db03 run-parts(/etc/cron.hourly)[18430]: finished 0anacron
Aug 29 18:11:40 db03 crontab[18604]: (atlasdb) LIST (atlasdb)
Aug 29 18:14:20 db03 crontab[18945]: (root) LIST (root)
Aug 29 19:01:01 db03 CROND[21545]: (root) CMD (run-parts /etc/cron.hourly)
Aug 29 19:01:01 db03 run-parts(/etc/cron.hourly)[21545]: starting 0anacron
Aug 29 19:01:01 db03 run-parts(/etc/cron.hourly)[21554]: finished 0anacron
Aug 29 20:01:01 db03 CROND[24739]: (root) CMD (run-parts /etc/cron.hourly)
Aug 29 20:01:01 db03 run-parts(/etc/cron.hourly)[24739]: starting 0anacron
Aug 29 20:01:01 db03 run-parts(/etc/cron.hourly)[24748]: finished 0anacron
Aug 29 21:01:01 db03 CROND[27931]: (root) CMD (run-parts /etc/cron.hourly)
Aug 29 21:01:01 db03 run-parts(/etc/cron.hourly)[27931]: starting 0anacron
Aug 29 21:01:01 db03 run-parts(/etc/cron.hourly)[27940]: finished 0anacron
Aug 29 22:01:01 db03 CROND[31126]: (root) CMD (run-parts /etc/cron.hourly)
Aug 29 22:01:01 db03 run-parts(/etc/cron.hourly)[31126]: starting 0anacron
Aug 29 22:01:01 db03 run-parts(/etc/cron.hourly)[31135]: finished 0anacron
Aug 29 22:51:38 db03 crontab[1542]: (root) LIST (root)
Aug 29 22:53:32 db03 crontab[1852]: (root) LIST (root)

----->>>---->>>  /var/log/dmesg
[    0.000000] Initializing cgroup subsys cpuset
[    0.000000] Initializing cgroup subsys cpu
[    0.000000] Initializing cgroup subsys cpuacct
[    0.000000] Linux version 3.10.0-1160.15.2.el7.x86_64 (mockbuild@kbuilder.bsys.centos.org) (gcc version 4.8.5 20150623 (Red Hat 4.8.5-44) (GCC) ) #1 SMP Wed Feb 3 15:06:38 UTC 2021
[    0.000000] Command line: BOOT_IMAGE=/boot/vmlinuz-3.10.0-1160.15.2.el7.x86_64 root=UUID=37fc43e9-788d-4ab5-af51-e7daafd314e8 ro net.ifnames=0 consoleblank=600 console=tty0 console=ttyS0,115200n8 spectre_v2=off nopti crashkernel=auto LANG=en_US.UTF-8
[    0.000000] e820: BIOS-provided physical RAM map:
[    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000009fbff] usable
[    0.000000] BIOS-e820: [mem 0x000000000009fc00-0x000000000009ffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000000f0000-0x00000000000fffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000000100000-0x00000000bff7ffff] usable
[    0.000000] BIOS-e820: [mem 0x00000000bff80000-0x00000000bfffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000feffc000-0x00000000feffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fffc0000-0x00000000ffffffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000100000000-0x000000023fffffff] usable
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] SMBIOS 2.8 present.
[    0.000000] DMI: OpenStack Foundation OpenStack Nova, BIOS rel-1.10.2-0-g5f4c7b1-20181220_000000-szxrtosci10000 04/01/2014
[    0.000000] Hypervisor detected: KVM
[    0.000000] e820: update [mem 0x00000000-0x00000fff] usable ==> reserved
[    0.000000] e820: remove [mem 0x000a0000-0x000fffff] usable
[    0.000000] e820: last_pfn = 0x240000 max_arch_pfn = 0x400000000
[    0.000000] MTRR default type: write-back
[    0.000000] MTRR fixed ranges enabled:
[    0.000000]   00000-9FFFF write-back
[    0.000000]   A0000-BFFFF uncachable
[    0.000000]   C0000-FFFFF write-protect
[    0.000000] MTRR variable ranges enabled:
[    0.000000]   0 base 000C0000000 mask 3FFC0000000 uncachable
[    0.000000]   1 disabled
[    0.000000]   2 disabled
[    0.000000]   3 disabled
[    0.000000]   4 disabled
[    0.000000]   5 disabled
[    0.000000]   6 disabled
[    0.000000]   7 disabled
[    0.000000] PAT configuration [0-7]: WB  WC  UC- UC  WB  WP  UC- UC
[    0.000000] e820: last_pfn = 0xbff80 max_arch_pfn = 0x400000000
[    0.000000] found SMP MP-table at [mem 0x000f6a50-0x000f6a5f] mapped at [ffffffffff200a50]
[    0.000000] Base memory trampoline at [ffff950500099000] 99000 size 24576
[    0.000000] Using GB pages for direct mapping
[    0.000000] BRK [0x1ecc74000, 0x1ecc74fff] PGTABLE
[    0.000000] BRK [0x1ecc75000, 0x1ecc75fff] PGTABLE
[    0.000000] BRK [0x1ecc76000, 0x1ecc76fff] PGTABLE
[    0.000000] BRK [0x1ecc77000, 0x1ecc77fff] PGTABLE
[    0.000000] BRK [0x1ecc78000, 0x1ecc78fff] PGTABLE
[    0.000000] BRK [0x1ecc79000, 0x1ecc79fff] PGTABLE
[    0.000000] RAMDISK: [mem 0x35d0d000-0x36e7efff]
[    0.000000] Early table checksum verification disabled
[    0.000000] ACPI: RSDP 00000000000f67f0 00014 (v00 BOCHS )
[    0.000000] ACPI: RSDT 00000000bffe5051 00034 (v01 BOCHS  BXPCRSDT 00000001 BXPC 00000001)
[    0.000000] ACPI: FACP 00000000bffe4e6d 00074 (v01 BOCHS  BXPCFACP 00000001 BXPC 00000001)
[    0.000000] ACPI: DSDT 00000000bffe0040 04E2D (v01 BOCHS  BXPCDSDT 00000001 BXPC 00000001)
[    0.000000] ACPI: FACS 00000000bffe0000 00040
[    0.000000] ACPI: APIC 00000000bffe4ee1 00080 (v01 BOCHS  BXPCAPIC 00000001 BXPC 00000001)
[    0.000000] ACPI: WAET 00000000bffe4f61 00028 (v01 BOCHS  BXPCWAET 00000001 BXPC 00000001)
[    0.000000] ACPI: SRAT 00000000bffe4f89 000C8 (v01 BOCHS  BXPCSRAT 00000001 BXPC 00000001)
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] SRAT: PXM 0 -> APIC 0x00 -> Node 0
[    0.000000] SRAT: PXM 0 -> APIC 0x01 -> Node 0
[    0.000000] SRAT: Node 0 PXM 0 [mem 0x00000000-0x0009ffff]
[    0.000000] SRAT: Node 0 PXM 0 [mem 0x00100000-0xbfffffff]
[    0.000000] SRAT: Node 0 PXM 0 [mem 0x100000000-0x23fffffff]
[    0.000000] NUMA: Node 0 [mem 0x00000000-0x0009ffff] + [mem 0x00100000-0xbfffffff] -> [mem 0x00000000-0xbfffffff]
[    0.000000] NUMA: Node 0 [mem 0x00000000-0xbfffffff] + [mem 0x100000000-0x23fffffff] -> [mem 0x00000000-0x23fffffff]
[    0.000000] NODE_DATA(0) allocated [mem 0x23ffd9000-0x23fffffff]
[    0.000000] Reserving 161MB of memory at 688MB for crashkernel (System RAM: 8191MB)
[    0.000000] kvm-clock: cpu 0, msr 2:3ff88001, primary cpu clock
[    0.000000] kvm-clock: Using msrs 4b564d01 and 4b564d00
[    0.000000] kvm-clock: using sched offset of 6848375675 cycles
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x00001000-0x00ffffff]
[    0.000000]   DMA32    [mem 0x01000000-0xffffffff]
[    0.000000]   Normal   [mem 0x100000000-0x23fffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x00001000-0x0009efff]
[    0.000000]   node   0: [mem 0x00100000-0xbff7ffff]
[    0.000000]   node   0: [mem 0x100000000-0x23fffffff]
[    0.000000] Initmem setup node 0 [mem 0x00001000-0x23fffffff]
[    0.000000] On node 0 totalpages: 2096926
[    0.000000]   DMA zone: 64 pages used for memmap
[    0.000000]   DMA zone: 21 pages reserved
[    0.000000]   DMA zone: 3998 pages, LIFO batch:0
[    0.000000]   DMA32 zone: 12222 pages used for memmap
[    0.000000]   DMA32 zone: 782208 pages, LIFO batch:31
[    0.000000]   Normal zone: 20480 pages used for memmap
[    0.000000]   Normal zone: 1310720 pages, LIFO batch:31
[    0.000000] ACPI: PM-Timer IO Port: 0x608
[    0.000000] ACPI: Local APIC address 0xfee00000
[    0.000000] ACPI: LAPIC (acpi_id[0x00] lapic_id[0x00] enabled)
[    0.000000] ACPI: LAPIC (acpi_id[0x01] lapic_id[0x01] enabled)
[    0.000000] ACPI: LAPIC_NMI (acpi_id[0xff] dfl dfl lint[0x1])
[    0.000000] ACPI: IOAPIC (id[0x00] address[0xfec00000] gsi_base[0])
[    0.000000] IOAPIC[0]: apic_id 0, version 17, address 0xfec00000, GSI 0-23
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 5 global_irq 5 high level)
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 10 global_irq 10 high level)
[    0.000000] ACPI: INT_SRC_OVR (bus 0 bus_irq 11 global_irq 11 high level)
[    0.000000] ACPI: IRQ0 used by override.
[    0.000000] ACPI: IRQ5 used by override.
[    0.000000] ACPI: IRQ9 used by override.
[    0.000000] ACPI: IRQ10 used by override.
[    0.000000] ACPI: IRQ11 used by override.
[    0.000000] Using ACPI (MADT) for SMP configuration information
[    0.000000] smpboot: Allowing 2 CPUs, 0 hotplug CPUs
[    0.000000] PM: Registered nosave memory: [mem 0x0009f000-0x0009ffff]
[    0.000000] PM: Registered nosave memory: [mem 0x000a0000-0x000effff]
[    0.000000] PM: Registered nosave memory: [mem 0x000f0000-0x000fffff]
[    0.000000] PM: Registered nosave memory: [mem 0xbff80000-0xbfffffff]
[    0.000000] PM: Registered nosave memory: [mem 0xc0000000-0xfeffbfff]
[    0.000000] PM: Registered nosave memory: [mem 0xfeffc000-0xfeffffff]
[    0.000000] PM: Registered nosave memory: [mem 0xff000000-0xfffbffff]
[    0.000000] PM: Registered nosave memory: [mem 0xfffc0000-0xffffffff]
[    0.000000] e820: [mem 0xc0000000-0xfeffbfff] available for PCI devices
[    0.000000] Booting paravirtualized kernel on KVM
[    0.000000] setup_percpu: NR_CPUS:5120 nr_cpumask_bits:2 nr_cpu_ids:2 nr_node_ids:1
[    0.000000] percpu: Embedded 38 pages/cpu s118784 r8192 d28672 u1048576
[    0.000000] pcpu-alloc: s118784 r8192 d28672 u1048576 alloc=1*2097152
[    0.000000] pcpu-alloc: [0] 0 1
[    0.000000] KVM setup async PF for cpu 0
[    0.000000] kvm-stealtime: cpu 0, msr 23fc1c040
[    0.000000] PV qspinlock hash table entries: 256 (order: 0, 4096 bytes)
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 2064139
[    0.000000] Policy zone: Normal
[    0.000000] Kernel command line: BOOT_IMAGE=/boot/vmlinuz-3.10.0-1160.15.2.el7.x86_64 root=UUID=37fc43e9-788d-4ab5-af51-e7daafd314e8 ro net.ifnames=0 consoleblank=600 console=tty0 console=ttyS0,115200n8 spectre_v2=off nopti crashkernel=auto LANG=en_US.UTF-8
[    0.000000] PID hash table entries: 4096 (order: 3, 32768 bytes)
[    0.000000] x86/fpu: xstate_offset[2]: 0240, xstate_sizes[2]: 0100
[    0.000000] x86/fpu: xstate_offset[3]: 03c0, xstate_sizes[3]: 0040
[    0.000000] x86/fpu: xstate_offset[4]: 0400, xstate_sizes[4]: 0040
[    0.000000] x86/fpu: xstate_offset[5]: 0440, xstate_sizes[5]: 0040
[    0.000000] x86/fpu: xstate_offset[6]: 0480, xstate_sizes[6]: 0200
[    0.000000] x86/fpu: xstate_offset[7]: 0680, xstate_sizes[7]: 0400
[    0.000000] xsave: enabled xstate_bv 0xff, cntxt size 0xa80 using standard form
[    0.000000] Memory: 4993596k/9437184k available (7792k kernel code, 1049480k absent, 399928k reserved, 5950k data, 1984k init)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
[    0.000000] Hierarchical RCU implementation.
[    0.000000]  RCU restricting CPUs from NR_CPUS=5120 to nr_cpu_ids=2.
[    0.000000] NR_IRQS:327936 nr_irqs:440 0
[    0.000000] Console: colour VGA+ 80x25
[    0.000000] console [tty0] enabled
[    0.000000] console [ttyS0] enabled
[    0.000000] allocated 218103808 bytes of page_cgroup
[    0.000000] please try 'cgroup_disable=memory' option if you don't want memory cgroups
[    0.000000] tsc: Detected 2600.000 MHz processor
[    0.336331] Calibrating delay loop (skipped) preset value.. 5200.00 BogoMIPS (lpj=2600000)
[    0.338144] pid_max: default: 32768 minimum: 301
[    0.339147] Security Framework initialized
[    0.340059] SELinux:  Initializing.
[    0.340915] SELinux:  Starting in permissive mode
[    0.340916] Yama: becoming mindful.
[    0.342326] Dentry cache hash table entries: 1048576 (order: 11, 8388608 bytes)
[    0.346003] Inode-cache hash table entries: 524288 (order: 10, 4194304 bytes)
[    0.348630] Mount-cache hash table entries: 16384 (order: 5, 131072 bytes)
[    0.350165] Mountpoint-cache hash table entries: 16384 (order: 5, 131072 bytes)
[    0.352555] Initializing cgroup subsys memory
[    0.353822] Initializing cgroup subsys devices
[    0.355095] Initializing cgroup subsys freezer
[    0.356363] Initializing cgroup subsys net_cls
[    0.357639] Initializing cgroup subsys blkio
[    0.358892] Initializing cgroup subsys perf_event
[    0.360193] Initializing cgroup subsys hugetlb
[    0.361466] Initializing cgroup subsys pids
[    0.362696] Initializing cgroup subsys net_prio
[    0.365214] Last level iTLB entries: 4KB 0, 2MB 0, 4MB 0
[    0.366630] Last level dTLB entries: 4KB 64, 2MB 0, 4MB 0
[    0.367930] tlb_flushall_shift: 6
[    0.368873] FEATURE SPEC_CTRL Present
[    0.369710] FEATURE IBPB_SUPPORT Present
[    0.370597] Spectre V1 : Mitigation: Load fences, usercopy/swapgs barriers and __user pointer sanitization
[    0.372464] Spectre V2 : off selected on command line.
[    0.373464] Spectre V2 : Enabling Indirect Branch Prediction Barrier
[    0.374610] Spectre V2 : Vulnerable
[    0.375485] Speculative Store Bypass: Mitigation: Speculative Store Bypass disabled via prctl and seccomp
[    0.377552] TAA: Vulnerable: Clear CPU buffers attempted, no microcode
[    0.380967] Freeing SMP alternatives: 28k freed
[    0.388482] ACPI: Core revision 20130517
[    0.391464] ACPI: All ACPI Tables successfully acquired
[    0.392739] ftrace: allocating 29654 entries in 116 pages
[    0.426391] Enabling x2apic
[    0.427369] Enabled x2apic
[    0.428409] Switched APIC routing to physical x2apic.
[    0.430317] ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
[    0.431397] smpboot: CPU0: Intel(R) Xeon(R) Gold 6278C CPU @ 2.60GHz (fam: 06, model: 55, stepping: 07)
[    0.433456] TSC deadline timer enabled
[    0.433507] Performance Events: unsupported p6 CPU model 85 no PMU driver, software events only.
[    0.435399] KVM setup paravirtual spinlock
[    0.437463] smpboot: Booting Node   0, Processors  #1 OK
[    0.438862] kvm-clock: cpu 1, msr 2:3ff88041, secondary cpu clock
[    0.440968] KVM setup async PF for cpu 1
[    0.442260] kvm-stealtime: cpu 1, msr 23fd1c040
[    0.443828] TAA CPU bug present and SMT on, data leak possible. See https://www.kernel.org/doc/html/latest/admin-guide/hw-vuln/tsx_async_abort.html for more details.
[    0.447502] Brought up 2 CPUs
[    0.448523] smpboot: Max logical packages: 1
[    0.449718] smpboot: Total of 2 processors activated (10400.00 BogoMIPS)
[    0.465169] node 0 initialised, 748545 pages in 13ms
[    0.466406] devtmpfs: initialized
[    0.467307] x86/mm: Memory block size: 128MB
[    0.470112] EVM: security.selinux
[    0.471040] EVM: security.ima
[    0.471839] EVM: security.capability
[    0.473467] atomic64 test passed for x86-64 platform with CX8 and with SSE
[    0.474709] pinctrl core: initialized pinctrl subsystem
[    0.475858] RTC time:  7:05:03, date: 08/28/21
[    0.476922] NET: Registered protocol family 16
[    0.477998] cpuidle: using governor haltpoll
[    0.479044] ACPI: bus type PCI registered
[    0.479932] acpiphp: ACPI Hot Plug PCI Controller Driver version: 0.5
[    0.481175] PCI: Using configuration type 1 for base access
[    0.485591] ACPI: Added _OSI(Module Device)
[    0.486599] ACPI: Added _OSI(Processor Device)
[    0.487570] ACPI: Added _OSI(3.0 _SCP Extensions)
[    0.488555] ACPI: Added _OSI(Processor Aggregator Device)
[    0.489627] ACPI: Added _OSI(Linux-Dell-Video)
[    0.491542] ACPI: EC: Look up EC in DSDT
[    0.494315] ACPI: Interpreter enabled
[    0.495212] ACPI: (supports S0 S3 S4 S5)
[    0.496155] ACPI: Using IOAPIC for interrupt routing
[    0.497181] PCI: Using host bridge windows from ACPI; if necessary, use "pci=nocrs" and report a bug
[    0.499070] ACPI: Enabled 2 GPEs in block 00 to 0F
[    0.512138] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-ff])
[    0.513599] acpi PNP0A03:00: _OSC: OS supports [ASPM ClockPM Segments MSI]
[    0.515195] acpi PNP0A03:00: _OSC failed (AE_NOT_FOUND); disabling ASPM
[    0.516489] acpi PNP0A03:00: fail to add MMCONFIG information, can't access extended PCI configuration space under this bridge.
[    0.518772] acpiphp: Slot [3] registered
[    0.519712] acpiphp: Slot [12] registered
[    0.520658] acpiphp: Slot [13] registered
[    0.521825] acpiphp: Slot [14] registered
[    0.522991] acpiphp: Slot [15] registered
[    0.524180] acpiphp: Slot [16] registered
[    0.525356] acpiphp: Slot [17] registered
[    0.526545] acpiphp: Slot [18] registered
[    0.527734] acpiphp: Slot [19] registered
[    0.528927] acpiphp: Slot [20] registered
[    0.530104] acpiphp: Slot [21] registered
[    0.531289] acpiphp: Slot [22] registered
[    0.532405] acpiphp: Slot [23] registered
[    0.533587] acpiphp: Slot [24] registered
[    0.534772] acpiphp: Slot [25] registered
[    0.535977] acpiphp: Slot [26] registered
[    0.537165] acpiphp: Slot [27] registered
[    0.538342] acpiphp: Slot [28] registered
[    0.539524] acpiphp: Slot [29] registered
[    0.540712] acpiphp: Slot [30] registered
[    0.541896] acpiphp: Slot [31] registered
[    0.543054] PCI host bridge to bus 0000:00
[    0.544351] pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7 window]
[    0.545906] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff window]
[    0.547381] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bffff window]
[    0.549512] pci_bus 0000:00: root bus resource [mem 0xc0000000-0xfebfffff window]
[    0.551577] pci_bus 0000:00: root bus resource [bus 00-ff]
[    0.552651] pci 0000:00:00.0: [8086:1237] type 00 class 0x060000
[    0.552979] pci 0000:00:01.0: [8086:7000] type 00 class 0x060100
[    0.553384] pci 0000:00:01.1: [8086:7010] type 00 class 0x010180
[    0.558465] pci 0000:00:01.1: reg 0x20: [io  0x90c0-0x90cf]
[    0.560715] pci 0000:00:01.1: legacy IDE quirk: reg 0x10: [io  0x01f0-0x01f7]
[    0.561986] pci 0000:00:01.1: legacy IDE quirk: reg 0x14: [io  0x03f6]
[    0.563177] pci 0000:00:01.1: legacy IDE quirk: reg 0x18: [io  0x0170-0x0177]
[    0.565161] pci 0000:00:01.1: legacy IDE quirk: reg 0x1c: [io  0x0376]
[    0.566475] pci 0000:00:01.2: [8086:7020] type 00 class 0x0c0300
[    0.569928] pci 0000:00:01.2: reg 0x20: [io  0x9080-0x909f]
[    0.571359] pci 0000:00:01.3: [8086:7113] type 00 class 0x068000
[    0.571665] pci 0000:00:01.3: quirk: [io  0x0600-0x063f] claimed by PIIX4 ACPI
[    0.573279] pci 0000:00:01.3: quirk: [io  0x0700-0x070f] claimed by PIIX4 SMB
[    0.574707] pci 0000:00:02.0: [1013:00b8] type 00 class 0x030000
[    0.578005] pci 0000:00:02.0: reg 0x10: [mem 0xfa000000-0xfbffffff pref]
[    0.579842] pci 0000:00:02.0: reg 0x14: [mem 0xfea50000-0xfea50fff]
[    0.589399] pci 0000:00:02.0: reg 0x30: [mem 0xfea40000-0xfea4ffff pref]
[    0.589601] pci 0000:00:03.0: [1af4:1000] type 00 class 0x020000
[    0.591451] pci 0000:00:03.0: reg 0x10: [io  0x9000-0x903f]
[    0.593313] pci 0000:00:03.0: reg 0x14: [mem 0xfea51000-0xfea51fff]
[    0.603280] pci 0000:00:03.0: reg 0x30: [mem 0xfea00000-0xfea3ffff pref]
[    0.603648] pci 0000:00:04.0: [1b36:0001] type 01 class 0x060400
[    0.605274] pci 0000:00:04.0: reg 0x10: [mem 0xfea52000-0xfea520ff 64bit]
[    0.607727] pci 0000:00:05.0: [1b36:0001] type 01 class 0x060400
[    0.609413] pci 0000:00:05.0: reg 0x10: [mem 0xfea53000-0xfea530ff 64bit]
[    0.613348] pci 0000:00:06.0: [1b36:0001] type 01 class 0x060400
[    0.615165] pci 0000:00:06.0: reg 0x10: [mem 0xfea54000-0xfea540ff 64bit]
[    0.618331] pci 0000:00:07.0: [1b36:0001] type 01 class 0x060400
[    0.620181] pci 0000:00:07.0: reg 0x10: [mem 0xfea55000-0xfea550ff 64bit]
[    0.624185] pci 0000:00:08.0: [1b36:0001] type 01 class 0x060400
[    0.626035] pci 0000:00:08.0: reg 0x10: [mem 0xfea56000-0xfea560ff 64bit]
[    0.629236] pci 0000:00:09.0: [1b36:0001] type 01 class 0x060400
[    0.630617] pci 0000:00:09.0: reg 0x10: [mem 0xfea57000-0xfea570ff 64bit]
[    0.634122] pci 0000:00:0a.0: [1b36:0001] type 01 class 0x060400
[    0.635453] pci 0000:00:0a.0: reg 0x10: [mem 0xfea58000-0xfea580ff 64bit]
[    0.638151] pci 0000:00:0b.0: [1b36:0001] type 01 class 0x060400
[    0.639524] pci 0000:00:0b.0: reg 0x10: [mem 0xfea59000-0xfea590ff 64bit]
[    0.641767] pci 0000:00:0c.0: [1af4:1003] type 00 class 0x078000
[    0.644958] pci 0000:00:0c.0: reg 0x10: [io  0x9040-0x907f]
[    0.646688] pci 0000:00:0c.0: reg 0x14: [mem 0xfea5a000-0xfea5afff]
[    0.652398] pci 0000:00:0c.0: reg 0x20: [mem 0xfd000000-0xfd003fff 64bit pref]
[    0.657503] pci 0000:00:0d.0: [1af4:1002] type 00 class 0x00ff00
[    0.658976] pci 0000:00:0d.0: reg 0x10: [io  0x90a0-0x90bf]
[    0.663969] pci 0000:00:0d.0: reg 0x20: [mem 0xfd004000-0xfd007fff 64bit pref]
[    0.666363] acpiphp: Slot [0] registered
[    0.668509] acpiphp: Slot [1] registered
[    0.669449] acpiphp: Slot [2] registered
[    0.670391] acpiphp: Slot [3-2] registered
[    0.671302] acpiphp: Slot [4] registered
[    0.672183] acpiphp: Slot [5] registered
[    0.673058] acpiphp: Slot [6] registered
[    0.673933] acpiphp: Slot [7] registered
[    0.674800] acpiphp: Slot [8] registered
[    0.675673] acpiphp: Slot [9] registered
[    0.676575] acpiphp: Slot [10] registered
[    0.677541] acpiphp: Slot [11] registered
[    0.678623] acpiphp: Slot [12-2] registered
[    0.679959] acpiphp: Slot [13-2] registered
[    0.694018] acpiphp: Slot [14-2] registered
[    0.695247] acpiphp: Slot [15-2] registered
[    0.696462] acpiphp: Slot [16-2] registered
[    0.697668] acpiphp: Slot [17-2] registered
[    0.698881] acpiphp: Slot [18-2] registered
[    0.700085] acpiphp: Slot [19-2] registered
[    0.701286] acpiphp: Slot [20-2] registered
[    0.702353] acpiphp: Slot [21-2] registered
[    0.703359] acpiphp: Slot [22-2] registered
[    0.704343] acpiphp: Slot [23-2] registered
[    0.705313] acpiphp: Slot [24-2] registered
[    0.706258] acpiphp: Slot [25-2] registered
[    0.707197] acpiphp: Slot [26-2] registered
[    0.708172] acpiphp: Slot [27-2] registered
[    0.709281] acpiphp: Slot [28-2] registered
[    0.710279] acpiphp: Slot [29-2] registered
[    0.711238] acpiphp: Slot [30-2] registered
[    0.712187] acpiphp: Slot [31-2] registered
[    0.713286] pci 0000:00:04.0: PCI bridge to [bus 01]
[    0.714334] pci 0000:00:04.0:   bridge window [io  0x8000-0x8fff]
[    0.714351] pci 0000:00:04.0:   bridge window [mem 0xfe800000-0xfe9fffff]
[    0.714382] pci 0000:00:04.0:   bridge window [mem 0xfce00000-0xfcffffff 64bit pref]
[    0.715830] acpiphp: Slot [0-2] registered
[    0.716776] acpiphp: Slot [1-2] registered
[    0.717726] acpiphp: Slot [2-2] registered
[    0.718664] acpiphp: Slot [3-3] registered
[    0.719656] acpiphp: Slot [4-2] registered
[    0.720554] acpiphp: Slot [5-2] registered
[    0.721443] acpiphp: Slot [6-2] registered
[    0.722340] acpiphp: Slot [7-2] registered
[    0.723240] acpiphp: Slot [8-2] registered
[    0.724144] acpiphp: Slot [9-2] registered
[    0.725047] acpiphp: Slot [10-2] registered
[    0.725974] acpiphp: Slot [11-2] registered
[    0.727041] acpiphp: Slot [12-3] registered
[    0.727921] acpiphp: Slot [13-3] registered
[    0.729125] acpiphp: Slot [14-3] registered
[    0.730347] acpiphp: Slot [15-3] registered
[    0.731334] acpiphp: Slot [16-3] registered
[    0.732217] acpiphp: Slot [17-3] registered
[    0.733096] acpiphp: Slot [18-3] registered
[    0.733989] acpiphp: Slot [19-3] registered
[    0.734945] acpiphp: Slot [20-3] registered
[    0.735931] acpiphp: Slot [21-3] registered
[    0.736949] acpiphp: Slot [22-3] registered
[    0.737901] acpiphp: Slot [23-3] registered
[    0.738784] acpiphp: Slot [24-3] registered
[    0.739698] acpiphp: Slot [25-3] registered
[    0.740653] acpiphp: Slot [26-3] registered
[    0.741529] acpiphp: Slot [27-3] registered
[    0.742418] acpiphp: Slot [28-3] registered
[    0.743301] acpiphp: Slot [29-3] registered
[    0.744192] acpiphp: Slot [30-3] registered
[    0.745066] acpiphp: Slot [31-3] registered
[    0.746014] pci 0000:02:01.0: [1af4:1001] type 00 class 0x010000
[    0.748627] pci 0000:02:01.0: reg 0x10: [io  0x7000-0x703f]
[    0.751211] pci 0000:02:01.0: reg 0x14: [mem 0xfe600000-0xfe600fff]
[    0.759274] pci 0000:02:01.0: reg 0x20: [mem 0xfcc00000-0xfcc03fff 64bit pref]
[    0.762053] pci 0000:00:05.0: PCI bridge to [bus 02]
[    0.763119] pci 0000:00:05.0:   bridge window [io  0x7000-0x7fff]
[    0.763133] pci 0000:00:05.0:   bridge window [mem 0xfe600000-0xfe7fffff]
[    0.763156] pci 0000:00:05.0:   bridge window [mem 0xfcc00000-0xfcdfffff 64bit pref]
[    0.764292] acpiphp: Slot [0-3] registered
[    0.765272] acpiphp: Slot [1-3] registered
[    0.766988] acpiphp: Slot [2-3] registered
[    0.767911] acpiphp: Slot [3-4] registered
[    0.768795] acpiphp: Slot [4-3] registered
[    0.769704] acpiphp: Slot [5-3] registered
[    0.770645] acpiphp: Slot [6-3] registered
[    0.771584] acpiphp: Slot [7-3] registered
[    0.772538] acpiphp: Slot [8-3] registered
[    0.773453] acpiphp: Slot [9-3] registered
[    0.774394] acpiphp: Slot [10-3] registered
[    0.775434] acpiphp: Slot [11-3] registered
[    0.776475] acpiphp: Slot [12-4] registered
[    0.777522] acpiphp: Slot [13-4] registered
[    0.778572] acpiphp: Slot [14-4] registered
[    0.779507] acpiphp: Slot [15-4] registered
[    0.780475] acpiphp: Slot [16-4] registered
[    0.781425] acpiphp: Slot [17-4] registered
[    0.782314] acpiphp: Slot [18-4] registered
[    0.783226] acpiphp: Slot [19-4] registered
[    0.784139] acpiphp: Slot [20-4] registered
[    0.785069] acpiphp: Slot [21-4] registered
[    0.785969] acpiphp: Slot [22-4] registered
[    0.786866] acpiphp: Slot [23-4] registered
[    0.787780] acpiphp: Slot [24-4] registered
[    0.788691] acpiphp: Slot [25-4] registered
[    0.789605] acpiphp: Slot [26-4] registered
[    0.790530] acpiphp: Slot [27-4] registered
[    0.791427] acpiphp: Slot [28-4] registered
[    0.792393] acpiphp: Slot [29-4] registered
[    0.793311] acpiphp: Slot [30-4] registered
[    0.794232] acpiphp: Slot [31-4] registered
[    0.795355] pci 0000:00:06.0: PCI bridge to [bus 03]
[    0.796347] pci 0000:00:06.0:   bridge window [io  0x6000-0x6fff]
[    0.796360] pci 0000:00:06.0:   bridge window [mem 0xfe400000-0xfe5fffff]
[    0.796383] pci 0000:00:06.0:   bridge window [mem 0xfca00000-0xfcbfffff 64bit pref]
[    0.797710] acpiphp: Slot [0-4] registered
[    0.798628] acpiphp: Slot [1-4] registered
[    0.799572] acpiphp: Slot [2-4] registered
[    0.800499] acpiphp: Slot [3-5] registered
[    0.801388] acpiphp: Slot [4-4] registered
[    0.802278] acpiphp: Slot [5-4] registered
[    0.803208] acpiphp: Slot [6-4] registered
[    0.804149] acpiphp: Slot [7-4] registered
[    0.805044] acpiphp: Slot [8-4] registered
[    0.806012] acpiphp: Slot [9-4] registered
[    0.807222] acpiphp: Slot [10-4] registered
[    0.808445] acpiphp: Slot [11-4] registered
[    0.809660] acpiphp: Slot [12-5] registered
[    0.810722] acpiphp: Slot [13-5] registered
[    0.811638] acpiphp: Slot [14-5] registered
[    0.812556] acpiphp: Slot [15-5] registered
[    0.813438] acpiphp: Slot [16-5] registered
[    0.814384] acpiphp: Slot [17-5] registered
[    0.815282] acpiphp: Slot [18-5] registered
[    0.816188] acpiphp: Slot [19-5] registered
[    0.817081] acpiphp: Slot [20-5] registered
[    0.817976] acpiphp: Slot [21-5] registered
[    0.818867] acpiphp: Slot [22-5] registered
[    0.819835] acpiphp: Slot [23-5] registered
[    0.820805] acpiphp: Slot [24-5] registered
[    0.821688] acpiphp: Slot [25-5] registered
[    0.822603] acpiphp: Slot [26-5] registered
[    0.823472] acpiphp: Slot [27-5] registered
[    0.824343] acpiphp: Slot [28-5] registered
[    0.825251] acpiphp: Slot [29-5] registered
[    0.826311] acpiphp: Slot [30-5] registered
[    0.827204] acpiphp: Slot [31-5] registered
[    0.828125] pci 0000:04:04.0: [1af4:1000] type 00 class 0x020000
[    0.829910] pci 0000:04:04.0: reg 0x10: [io  0x5000-0x503f]
[    0.831637] pci 0000:04:04.0: reg 0x14: [mem 0xfe240000-0xfe240fff]
[    0.840791] pci 0000:04:04.0: reg 0x30: [mem 0xfe200000-0xfe23ffff pref]
[    0.841222] pci 0000:00:07.0: PCI bridge to [bus 04]
[    0.842213] pci 0000:00:07.0:   bridge window [io  0x5000-0x5fff]
[    0.842229] pci 0000:00:07.0:   bridge window [mem 0xfe200000-0xfe3fffff]
[    0.842260] pci 0000:00:07.0:   bridge window [mem 0xfc800000-0xfc9fffff 64bit pref]
[    0.843495] acpiphp: Slot [0-5] registered
[    0.844412] acpiphp: Slot [1-5] registered
[    0.845329] acpiphp: Slot [2-5] registered
[    0.846238] acpiphp: Slot [3-6] registered
[    0.847157] acpiphp: Slot [4-5] registered
[    0.848053] acpiphp: Slot [5-5] registered
[    0.849316] acpiphp: Slot [6-5] registered
[    0.850275] acpiphp: Slot [7-5] registered
[    0.851161] acpiphp: Slot [8-5] registered
[    0.852027] acpiphp: Slot [9-5] registered
[    0.852925] acpiphp: Slot [10-5] registered
[    0.853794] acpiphp: Slot [11-5] registered
[    0.854752] acpiphp: Slot [12-6] registered
[    0.855707] acpiphp: Slot [13-6] registered
[    0.856638] acpiphp: Slot [14-6] registered
[    0.857530] acpiphp: Slot [15-6] registered
[    0.858413] acpiphp: Slot [16-6] registered
[    0.859402] acpiphp: Slot [17-6] registered
[    0.860646] acpiphp: Slot [18-6] registered
[    0.861556] acpiphp: Slot [19-6] registered
[    0.862446] acpiphp: Slot [20-6] registered
[    0.863367] acpiphp: Slot [21-6] registered
[    0.864252] acpiphp: Slot [22-6] registered
[    0.865172] acpiphp: Slot [23-6] registered
[    0.866062] acpiphp: Slot [24-6] registered
[    0.866953] acpiphp: Slot [25-6] registered
[    0.867829] acpiphp: Slot [26-6] registered
[    0.868741] acpiphp: Slot [27-6] registered
[    0.869658] acpiphp: Slot [28-6] registered
[    0.870567] acpiphp: Slot [29-6] registered
[    0.871465] acpiphp: Slot [30-6] registered
[    0.872390] acpiphp: Slot [31-6] registered
[    0.873470] pci 0000:00:08.0: PCI bridge to [bus 05]
[    0.874469] pci 0000:00:08.0:   bridge window [io  0x4000-0x4fff]
[    0.874482] pci 0000:00:08.0:   bridge window [mem 0xfe000000-0xfe1fffff]
[    0.874505] pci 0000:00:08.0:   bridge window [mem 0xfc600000-0xfc7fffff 64bit pref]
[    0.875837] acpiphp: Slot [0-6] registered
[    0.876799] acpiphp: Slot [1-6] registered
[    0.877736] acpiphp: Slot [2-6] registered
[    0.878677] acpiphp: Slot [3-7] registered
[    0.879586] acpiphp: Slot [4-6] registered
[    0.880506] acpiphp: Slot [5-6] registered
[    0.881419] acpiphp: Slot [6-6] registered
[    0.882344] acpiphp: Slot [7-6] registered
[    0.883338] acpiphp: Slot [8-6] registered
[    0.884331] acpiphp: Slot [9-6] registered
[    0.885281] acpiphp: Slot [10-6] registered
[    0.886211] acpiphp: Slot [11-6] registered
[    0.887139] acpiphp: Slot [12-7] registered
[    0.888077] acpiphp: Slot [13-7] registered
[    0.888988] acpiphp: Slot [14-7] registered
[    0.889924] acpiphp: Slot [15-7] registered
[    0.890859] acpiphp: Slot [16-7] registered
[    0.891821] acpiphp: Slot [17-7] registered
[    0.892814] acpiphp: Slot [18-7] registered
[    0.893732] acpiphp: Slot [19-7] registered
[    0.894642] acpiphp: Slot [20-7] registered
[    0.895572] acpiphp: Slot [21-7] registered
[    0.896498] acpiphp: Slot [22-7] registered
[    0.897413] acpiphp: Slot [23-7] registered
[    0.898304] acpiphp: Slot [24-7] registered
[    0.899224] acpiphp: Slot [25-7] registered
[    0.900151] acpiphp: Slot [26-7] registered
[    0.901091] acpiphp: Slot [27-7] registered
[    0.902040] acpiphp: Slot [28-7] registered
[    0.913184] acpiphp: Slot [29-7] registered
[    0.914118] acpiphp: Slot [30-7] registered
[    0.915017] acpiphp: Slot [31-7] registered
[    0.916096] pci 0000:00:09.0: PCI bridge to [bus 06]
[    0.917070] pci 0000:00:09.0:   bridge window [io  0x3000-0x3fff]
[    0.917083] pci 0000:00:09.0:   bridge window [mem 0xfde00000-0xfdffffff]
[    0.917106] pci 0000:00:09.0:   bridge window [mem 0xfc400000-0xfc5fffff 64bit pref]
[    0.918473] acpiphp: Slot [0-7] registered
[    0.919444] acpiphp: Slot [1-7] registered
[    0.920419] acpiphp: Slot [2-7] registered
[    0.921369] acpiphp: Slot [3-8] registered
[    0.922329] acpiphp: Slot [4-7] registered
[    0.923291] acpiphp: Slot [5-7] registered
[    0.924184] acpiphp: Slot [6-7] registered
[    0.925110] acpiphp: Slot [7-7] registered
[    0.926336] acpiphp: Slot [8-7] registered
[    0.927249] acpiphp: Slot [9-7] registered
[    0.928165] acpiphp: Slot [10-7] registered
[    0.929094] acpiphp: Slot [11-7] registered
[    0.930005] acpiphp: Slot [12-8] registered
[    0.930965] acpiphp: Slot [13-8] registered
[    0.931886] acpiphp: Slot [14-8] registered
[    0.932843] acpiphp: Slot [15-8] registered
[    0.933810] acpiphp: Slot [16-8] registered
[    0.934772] acpiphp: Slot [17-8] registered
[    0.935791] acpiphp: Slot [18-8] registered
[    0.936897] acpiphp: Slot [19-8] registered
[    0.937892] acpiphp: Slot [20-8] registered
[    0.938802] acpiphp: Slot [21-8] registered
[    0.939721] acpiphp: Slot [22-8] registered
[    0.940620] acpiphp: Slot [23-8] registered
[    0.941578] acpiphp: Slot [24-8] registered
[    0.942708] acpiphp: Slot [25-8] registered
[    0.943709] acpiphp: Slot [26-8] registered
[    0.944727] acpiphp: Slot [27-8] registered
[    0.945718] acpiphp: Slot [28-8] registered
[    0.946621] acpiphp: Slot [29-8] registered
[    0.947603] acpiphp: Slot [30-8] registered
[    0.948584] acpiphp: Slot [31-8] registered
[    0.949724] pci 0000:00:0a.0: PCI bridge to [bus 07]
[    0.950791] pci 0000:00:0a.0:   bridge window [io  0x2000-0x2fff]
[    0.950804] pci 0000:00:0a.0:   bridge window [mem 0xfdc00000-0xfddfffff]
[    0.950827] pci 0000:00:0a.0:   bridge window [mem 0xfc200000-0xfc3fffff 64bit pref]
[    0.952219] acpiphp: Slot [0-8] registered
[    0.953140] acpiphp: Slot [1-8] registered
[    0.954056] acpiphp: Slot [2-8] registered
[    0.954978] acpiphp: Slot [3-9] registered
[    0.955934] acpiphp: Slot [4-8] registered
[    0.956919] acpiphp: Slot [5-8] registered
[    0.958020] acpiphp: Slot [6-8] registered
[    0.959230] acpiphp: Slot [7-8] registered
[    0.960377] acpiphp: Slot [8-8] registered
[    0.961418] acpiphp: Slot [9-8] registered
[    0.962498] acpiphp: Slot [10-8] registered
[    0.963443] acpiphp: Slot [11-8] registered
[    0.964383] acpiphp: Slot [12-9] registered
[    0.965312] acpiphp: Slot [13-9] registered
[    0.966272] acpiphp: Slot [14-9] registered
[    0.967174] acpiphp: Slot [15-9] registered
[    0.968113] acpiphp: Slot [16-9] registered
[    0.969061] acpiphp: Slot [17-9] registered
[    0.970016] acpiphp: Slot [18-9] registered
[    0.970946] acpiphp: Slot [19-9] registered
[    0.971966] acpiphp: Slot [20-9] registered
[    0.972877] acpiphp: Slot [21-9] registered
[    0.973772] acpiphp: Slot [22-9] registered
[    0.974671] acpiphp: Slot [23-9] registered
[    0.975629] acpiphp: Slot [24-9] registered
[    0.976626] acpiphp: Slot [25-9] registered
[    0.977589] acpiphp: Slot [26-9] registered
[    0.978576] acpiphp: Slot [27-9] registered
[    0.979522] acpiphp: Slot [28-9] registered
[    0.980473] acpiphp: Slot [29-9] registered
[    0.981366] acpiphp: Slot [30-9] registered
[    0.982299] acpiphp: Slot [31-9] registered
[    0.983389] pci 0000:00:0b.0: PCI bridge to [bus 08]
[    0.984347] pci 0000:00:0b.0:   bridge window [io  0x1000-0x1fff]
[    0.984360] pci 0000:00:0b.0:   bridge window [mem 0xfda00000-0xfdbfffff]
[    0.984388] pci 0000:00:0b.0:   bridge window [mem 0xfc000000-0xfc1fffff 64bit pref]
[    0.994111] ACPI: PCI Interrupt Link [LNKA] (IRQs 5 *10 11)
[    0.995579] ACPI: PCI Interrupt Link [LNKB] (IRQs 5 *10 11)
[    0.996972] ACPI: PCI Interrupt Link [LNKC] (IRQs 5 10 *11)
[    0.998380] ACPI: PCI Interrupt Link [LNKD] (IRQs 5 10 *11)
[    0.999816] ACPI: PCI Interrupt Link [LNKS] (IRQs *9)
[    1.001315] vgaarb: device added: PCI:0000:00:02.0,decodes=io+mem,owns=io+mem,locks=none
[    1.003019] vgaarb: loaded
[    1.003786] vgaarb: bridge control possible 0000:00:02.0
[    1.004915] SCSI subsystem initialized
[    1.005823] ACPI: bus type USB registered
[    1.006751] usbcore: registered new interface driver usbfs
[    1.007780] usbcore: registered new interface driver hub
[    1.008796] usbcore: registered new device driver usb
[    1.009979] EDAC MC: Ver: 3.0.0
[    1.011173] PCI: Using ACPI for IRQ routing
[    1.012060] PCI: pci_cache_line_size set to 64 bytes
[    1.012312] e820: reserve RAM buffer [mem 0x0009fc00-0x0009ffff]
[    1.012314] e820: reserve RAM buffer [mem 0xbff80000-0xbfffffff]
[    1.012432] NetLabel: Initializing
[    1.013273] NetLabel:  domain hash size = 128
[    1.014229] NetLabel:  protocols = UNLABELED CIPSOv4
[    1.015324] NetLabel:  unlabeled traffic allowed by default
[    1.016501] amd_nb: Cannot enumerate AMD northbridges
[    1.017540] Switched to clocksource kvm-clock
[    1.022894] pnp: PnP ACPI init
[    1.023757] ACPI: bus type PNP registered
[    1.024731] pnp 00:00: Plug and Play ACPI device, IDs PNP0b00 (active)
[    1.024776] pnp 00:01: Plug and Play ACPI device, IDs PNP0303 (active)
[    1.024805] pnp 00:02: Plug and Play ACPI device, IDs PNP0f13 (active)
[    1.024821] pnp 00:03: [dma 2]
[    1.024833] pnp 00:03: Plug and Play ACPI device, IDs PNP0700 (active)
[    1.024908] pnp 00:04: Plug and Play ACPI device, IDs PNP0501 (active)
[    1.025306] pnp: PnP ACPI: found 5 devices
[    1.026280] ACPI: bus type PNP unregistered
[    1.033857] pci 0000:00:04.0: PCI bridge to [bus 01]
[    1.034841] pci 0000:00:04.0:   bridge window [io  0x8000-0x8fff]
[    1.037239] pci 0000:00:04.0:   bridge window [mem 0xfe800000-0xfe9fffff]
[    1.039246] pci 0000:00:04.0:   bridge window [mem 0xfce00000-0xfcffffff 64bit pref]
[    1.042529] pci 0000:00:05.0: PCI bridge to [bus 02]
[    1.044087] pci 0000:00:05.0:   bridge window [io  0x7000-0x7fff]
[    1.046211] pci 0000:00:05.0:   bridge window [mem 0xfe600000-0xfe7fffff]
[    1.048088] pci 0000:00:05.0:   bridge window [mem 0xfcc00000-0xfcdfffff 64bit pref]
[    1.051239] pci 0000:00:06.0: PCI bridge to [bus 03]
[    1.052248] pci 0000:00:06.0:   bridge window [io  0x6000-0x6fff]
[    1.054518] pci 0000:00:06.0:   bridge window [mem 0xfe400000-0xfe5fffff]
[    1.057135] pci 0000:00:06.0:   bridge window [mem 0xfca00000-0xfcbfffff 64bit pref]
[    1.061814] pci 0000:00:07.0: PCI bridge to [bus 04]
[    1.063079] pci 0000:00:07.0:   bridge window [io  0x5000-0x5fff]
[    1.066648] pci 0000:00:07.0:   bridge window [mem 0xfe200000-0xfe3fffff]
[    1.069087] pci 0000:00:07.0:   bridge window [mem 0xfc800000-0xfc9fffff 64bit pref]
[    1.073116] pci 0000:00:08.0: PCI bridge to [bus 05]
[    1.074388] pci 0000:00:08.0:   bridge window [io  0x4000-0x4fff]
[    1.077230] pci 0000:00:08.0:   bridge window [mem 0xfe000000-0xfe1fffff]
[    1.079367] pci 0000:00:08.0:   bridge window [mem 0xfc600000-0xfc7fffff 64bit pref]
[    1.082564] pci 0000:00:09.0: PCI bridge to [bus 06]
[    1.083611] pci 0000:00:09.0:   bridge window [io  0x3000-0x3fff]
[    1.086473] pci 0000:00:09.0:   bridge window [mem 0xfde00000-0xfdffffff]
[    1.088393] pci 0000:00:09.0:   bridge window [mem 0xfc400000-0xfc5fffff 64bit pref]
[    1.091491] pci 0000:00:0a.0: PCI bridge to [bus 07]
[    1.092558] pci 0000:00:0a.0:   bridge window [io  0x2000-0x2fff]
[    1.094824] pci 0000:00:0a.0:   bridge window [mem 0xfdc00000-0xfddfffff]
[    1.097110] pci 0000:00:0a.0:   bridge window [mem 0xfc200000-0xfc3fffff 64bit pref]
[    1.100189] pci 0000:00:0b.0: PCI bridge to [bus 08]
[    1.101216] pci 0000:00:0b.0:   bridge window [io  0x1000-0x1fff]
[    1.103430] pci 0000:00:0b.0:   bridge window [mem 0xfda00000-0xfdbfffff]
[    1.105501] pci 0000:00:0b.0:   bridge window [mem 0xfc000000-0xfc1fffff 64bit pref]
[    1.109918] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7 window]
[    1.109921] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff window]
[    1.109922] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff window]
[    1.109923] pci_bus 0000:00: resource 7 [mem 0xc0000000-0xfebfffff window]
[    1.109925] pci_bus 0000:01: resource 0 [io  0x8000-0x8fff]
[    1.109926] pci_bus 0000:01: resource 1 [mem 0xfe800000-0xfe9fffff]
[    1.109927] pci_bus 0000:01: resource 2 [mem 0xfce00000-0xfcffffff 64bit pref]
[    1.109929] pci_bus 0000:02: resource 0 [io  0x7000-0x7fff]
[    1.109930] pci_bus 0000:02: resource 1 [mem 0xfe600000-0xfe7fffff]
[    1.109931] pci_bus 0000:02: resource 2 [mem 0xfcc00000-0xfcdfffff 64bit pref]
[    1.109933] pci_bus 0000:03: resource 0 [io  0x6000-0x6fff]
[    1.109933] pci_bus 0000:03: resource 1 [mem 0xfe400000-0xfe5fffff]
[    1.109935] pci_bus 0000:03: resource 2 [mem 0xfca00000-0xfcbfffff 64bit pref]
[    1.109936] pci_bus 0000:04: resource 0 [io  0x5000-0x5fff]
[    1.109937] pci_bus 0000:04: resource 1 [mem 0xfe200000-0xfe3fffff]
[    1.109938] pci_bus 0000:04: resource 2 [mem 0xfc800000-0xfc9fffff 64bit pref]
[    1.109939] pci_bus 0000:05: resource 0 [io  0x4000-0x4fff]
[    1.109940] pci_bus 0000:05: resource 1 [mem 0xfe000000-0xfe1fffff]
[    1.109941] pci_bus 0000:05: resource 2 [mem 0xfc600000-0xfc7fffff 64bit pref]
[    1.109942] pci_bus 0000:06: resource 0 [io  0x3000-0x3fff]
[    1.109943] pci_bus 0000:06: resource 1 [mem 0xfde00000-0xfdffffff]
[    1.109944] pci_bus 0000:06: resource 2 [mem 0xfc400000-0xfc5fffff 64bit pref]
[    1.109946] pci_bus 0000:07: resource 0 [io  0x2000-0x2fff]
[    1.109946] pci_bus 0000:07: resource 1 [mem 0xfdc00000-0xfddfffff]
[    1.109947] pci_bus 0000:07: resource 2 [mem 0xfc200000-0xfc3fffff 64bit pref]
[    1.109949] pci_bus 0000:08: resource 0 [io  0x1000-0x1fff]
[    1.109950] pci_bus 0000:08: resource 1 [mem 0xfda00000-0xfdbfffff]
[    1.109951] pci_bus 0000:08: resource 2 [mem 0xfc000000-0xfc1fffff 64bit pref]
[    1.109989] NET: Registered protocol family 2
[    1.111179] TCP established hash table entries: 65536 (order: 7, 524288 bytes)
[    1.112942] TCP bind hash table entries: 65536 (order: 8, 1048576 bytes)
[    1.114175] TCP: Hash tables configured (established 65536 bind 65536)
[    1.115362] TCP: reno registered
[    1.116184] UDP hash table entries: 4096 (order: 5, 131072 bytes)
[    1.117327] UDP-Lite hash table entries: 4096 (order: 5, 131072 bytes)
[    1.118970] NET: Registered protocol family 1
[    1.120228] pci 0000:00:00.0: Limiting direct PCI/PCI transfers
[    1.121667] pci 0000:00:01.0: PIIX3: Enabling Passive Release
[    1.122728] pci 0000:00:01.0: Activating ISA DMA hang workarounds
[    1.145377] ACPI: PCI Interrupt Link [LNKD] enabled at IRQ 11
[    1.168968] pci 0000:00:02.0: Boot video device
[    1.169079] PCI: CLS 0 bytes, default 64
[    1.169118] Unpacking initramfs...
[    1.366417] Freeing initrd memory: 17864k freed
[    1.371441] PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
[    1.372597] software IO TLB [mem 0xbbf80000-0xbff80000] (64MB) mapped at [ffff9505bbf80000-ffff9505bff7ffff]
[    1.374522] RAPL PMU: API unit is 2^-32 Joules, 3 fixed counters, 10737418240 ms ovfl timer
[    1.376200] RAPL PMU: hw unit of domain pp0-core 2^-0 Joules
[    1.377284] RAPL PMU: hw unit of domain package 2^-0 Joules
[    1.378272] RAPL PMU: hw unit of domain dram 2^-16 Joules
[    1.379629] sha1_ssse3: Using AVX2 optimized SHA-1 implementation
[    1.380801] sha256_ssse3: Using AVX2 optimized SHA-256 implementation
[    1.382181] futex hash table entries: 512 (order: 3, 32768 bytes)
[    1.383295] Initialise system trusted keyring
[    1.384229] audit: initializing netlink socket (disabled)
[    1.385261] type=2000 audit(1630134304.426:1): initialized
[    1.406368] HugeTLB registered 1 GB page size, pre-allocated 0 pages
[    1.407996] HugeTLB registered 2 MB page size, pre-allocated 0 pages
[    1.410741] zpool: loaded
[    1.411811] zbud: loaded
[    1.413040] VFS: Disk quotas dquot_6.5.2
[    1.414308] Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    1.416137] Key type big_key registered
[    1.417375] SELinux:  Registering netfilter hooks
[    1.418140] NET: Registered protocol family 38
[    1.419089] Key type asymmetric registered
[    1.419973] Asymmetric key parser 'x509' registered
[    1.420965] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 248)
[    1.422671] io scheduler noop registered
[    1.423567] io scheduler deadline registered (default)
[    1.424622] io scheduler cfq registered
[    1.435488] io scheduler mq-deadline registered
[    1.436383] io scheduler kyber registered
[    1.437416] pci_hotplug: PCI Hot Plug PCI Core version: 0.5
[    1.438438] pciehp: PCI Express Hot Plug Controller Driver version: 0.4
[    1.439576] shpchp 0000:00:04.0: Requesting control of SHPC hotplug via OSHP (\_SB_.PCI0.S20_)
[    1.441260] shpchp 0000:00:04.0: Requesting control of SHPC hotplug via OSHP (\_SB_.PCI0)
[    1.442963] shpchp 0000:00:04.0: Cannot get control of SHPC hotplug
[    1.444083] shpchp 0000:00:05.0: Requesting control of SHPC hotplug via OSHP (\_SB_.PCI0.S28_)
[    1.445792] shpchp 0000:00:05.0: Requesting control of SHPC hotplug via OSHP (\_SB_.PCI0)
[    1.447503] shpchp 0000:00:05.0: Cannot get control of SHPC hotplug
[    1.448630] shpchp 0000:00:06.0: Requesting control of SHPC hotplug via OSHP (\_SB_.PCI0.S30_)
[    1.450309] shpchp 0000:00:06.0: Requesting control of SHPC hotplug via OSHP (\_SB_.PCI0)
[    1.451997] shpchp 0000:00:06.0: Cannot get control of SHPC hotplug
[    1.453132] shpchp 0000:00:07.0: Requesting control of SHPC hotplug via OSHP (\_SB_.PCI0.S38_)
[    1.454862] shpchp 0000:00:07.0: Requesting control of SHPC hotplug via OSHP (\_SB_.PCI0)
[    1.456573] shpchp 0000:00:07.0: Cannot get control of SHPC hotplug
[    1.457709] shpchp 0000:00:08.0: Requesting control of SHPC hotplug via OSHP (\_SB_.PCI0.S40_)
[    1.459490] shpchp 0000:00:08.0: Requesting control of SHPC hotplug via OSHP (\_SB_.PCI0)
[    1.461151] shpchp 0000:00:08.0: Cannot get control of SHPC hotplug
[    1.462231] shpchp 0000:00:09.0: Requesting control of SHPC hotplug via OSHP (\_SB_.PCI0.S48_)
[    1.463932] shpchp 0000:00:09.0: Requesting control of SHPC hotplug via OSHP (\_SB_.PCI0)
[    1.465640] shpchp 0000:00:09.0: Cannot get control of SHPC hotplug
[    1.466748] shpchp 0000:00:0a.0: Requesting control of SHPC hotplug via OSHP (\_SB_.PCI0.S50_)
[    1.468476] shpchp 0000:00:0a.0: Requesting control of SHPC hotplug via OSHP (\_SB_.PCI0)
[    1.470124] shpchp 0000:00:0a.0: Cannot get control of SHPC hotplug
[    1.471218] shpchp 0000:00:0b.0: Requesting control of SHPC hotplug via OSHP (\_SB_.PCI0.S58_)
[    1.472947] shpchp 0000:00:0b.0: Requesting control of SHPC hotplug via OSHP (\_SB_.PCI0)
[    1.474711] shpchp 0000:00:0b.0: Cannot get control of SHPC hotplug
[    1.476021] shpchp: Standard Hot Plug PCI Controller Driver version: 0.4
[    1.477308] intel_idle: does not run on family 6 model 85
[    1.477421] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input0
[    1.479120] ACPI: Power Button [PWRF]
[    1.480168] GHES: HEST is not enabled!
[    1.481158] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    1.505529] 00:04: ttyS0 at I/O 0x3f8 (irq = 4) is a 16550A
[    1.507023] Non-volatile memory driver v1.3
[    1.507964] Linux agpgart interface v0.103
[    1.509041] crash memory driver: version 1.1
[    1.509994] rdac: device handler registered
[    1.510941] hp_sw: device handler registered
[    1.511844] emc: device handler registered
[    1.512738] alua: device handler registered
[    1.513704] libphy: Fixed MDIO Bus: probed
[    1.514630] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.515733] ehci-pci: EHCI PCI platform driver
[    1.516637] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.517718] ohci-pci: OHCI PCI platform driver
[    1.518639] uhci_hcd: USB Universal Host Controller Interface driver
[    1.540817] uhci_hcd 0000:00:01.2: UHCI Host Controller
[    1.541898] uhci_hcd 0000:00:01.2: new USB bus registered, assigned bus number 1
[    1.543500] uhci_hcd 0000:00:01.2: detected 2 ports
[    1.544528] uhci_hcd 0000:00:01.2: irq 11, io base 0x00009080
[    1.545606] usb usb1: New USB device found, idVendor=1d6b, idProduct=0001, bcdDevice= 3.10
[    1.547269] usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    1.548826] usb usb1: Product: UHCI Host Controller
[    1.549757] usb usb1: Manufacturer: Linux 3.10.0-1160.15.2.el7.x86_64 uhci_hcd
[    1.551324] usb usb1: SerialNumber: 0000:00:01.2
[    1.552364] hub 1-0:1.0: USB hub found
[    1.553195] hub 1-0:1.0: 2 ports detected
[    1.554176] usbcore: registered new interface driver usbserial_generic
[    1.555281] usbserial: USB Serial support registered for generic
[    1.556349] i8042: PNP: PS/2 Controller [PNP0303:KBD,PNP0f13:MOU] at 0x60,0x64 irq 1,12
[    1.558491] serio: i8042 KBD port at 0x60,0x64 irq 1
[    1.559459] serio: i8042 AUX port at 0x60,0x64 irq 12
[    1.560711] mousedev: PS/2 mouse device common for all mice
[    1.562161] input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input1
[    1.564389] input: VirtualPS/2 VMware VMMouse as /devices/platform/i8042/serio1/input/input2
[    1.564641] rtc_cmos 00:00: RTC can wake from S4
[    1.564874] rtc_cmos 00:00: rtc core: registered rtc_cmos as rtc0
[    1.564951] rtc_cmos 00:00: alarms up to one day, y3k, 114 bytes nvram
[    1.565387] hidraw: raw HID events driver (C) Jiri Kosina
[    1.565473] usbcore: registered new interface driver usbhid
[    1.565473] usbhid: USB HID core driver
[    1.565580] drop_monitor: Initializing network drop monitor service
[    1.565633] TCP: cubic registered
[    1.565636] Initializing XFRM netlink socket
[    1.565723] NET: Registered protocol family 10
[    1.565876] NET: Registered protocol family 17
[    1.565881] mpls_gso: MPLS GSO support
[    1.565974] mce: Using 10 MCE banks
[    1.566060] PM: Hibernation image not present or could not be loaded.
[    1.566063] Loading compiled-in X.509 certificates
[    1.566078] Loaded X.509 cert 'CentOS Linux kpatch signing key: ea0413152cde1d98ebdca3fe6f0230904c9ef717'
[    1.566084] Loaded X.509 cert 'CentOS Linux Driver update signing key: 7f421ee0ab69461574bb358861dbe77762a4201b'
[    1.566401] Loaded X.509 cert 'CentOS Linux kernel signing key: 02fb1b20b039e3cdc759938ba958538481778031'
[    1.566417] registered taskstats version 1
[    1.566437] page_owner is disabled
[    1.567890] Key type trusted registered
[    1.569082] Key type encrypted registered
[    1.569100] IMA: No TPM chip found, activating TPM-bypass! (rc=-19)
[    1.569229] BERT: Boot Error Record Table support is disabled. Enable it by using bert_enable as kernel parameter.
[    1.569269]   Magic number: 1:371:67
[    1.569441] rtc_cmos 00:00: setting system clock to 2021-08-28 07:05:04 UTC (1630134304)
[    1.574529] input: VirtualPS/2 VMware VMMouse as /devices/platform/i8042/serio1/input/input3
[    1.606168] Freeing unused kernel memory: 1984k freed
[    1.608025] Write protecting the kernel read-only data: 12288k
[    1.610704] Freeing unused kernel memory: 388k freed
[    1.613545] Freeing unused kernel memory: 536k freed
[    1.617416] random: systemd: uninitialized urandom read (16 bytes read)
[    1.619036] random: systemd: uninitialized urandom read (16 bytes read)
[    1.620218] random: systemd: uninitialized urandom read (16 bytes read)
[    1.622378] systemd[1]: systemd 219 running in system mode. (+PAM +AUDIT +SELINUX +IMA -APPARMOR +SMACK +SYSVINIT +UTMP +LIBCRYPTSETUP +GCRYPT +GNUTLS +ACL +XZ +LZ4 -SECCOMP +BLKID +ELFUTILS +KMOD +IDN)
[    1.625538] systemd[1]: Detected virtualization kvm.
[    1.626573] systemd[1]: Detected architecture x86-64.
[    1.627555] systemd[1]: Running in initial RAM disk.
[    1.629334] systemd[1]: Set hostname to <localhost.localdomain>.
[    1.653156] random: systemd: uninitialized urandom read (16 bytes read)
[    1.654380] random: systemd: uninitialized urandom read (16 bytes read)
[    1.655619] random: systemd: uninitialized urandom read (16 bytes read)
[    1.657008] random: systemd: uninitialized urandom read (16 bytes read)
[    1.659044] random: systemd: uninitialized urandom read (16 bytes read)
[    1.660404] random: systemd: uninitialized urandom read (16 bytes read)
[    1.661861] random: systemd: uninitialized urandom read (16 bytes read)
[    1.666175] systemd[1]: Created slice Root Slice.
[    1.667864] systemd[1]: Listening on Journal Socket.
[    1.669931] systemd[1]: Listening on udev Kernel Socket.
[    1.671892] systemd[1]: Reached target Swap.
[    1.673305] systemd[1]: Reached target Local File Systems.
[    1.675065] systemd[1]: Listening on udev Control Socket.
[    1.676798] systemd[1]: Reached target Timers.
[    1.678221] systemd[1]: Reached target Sockets.
[    1.679692] systemd[1]: Created slice System Slice.
[    1.681253] systemd[1]: Reached target Slices.
[    1.683114] systemd[1]: Starting dracut cmdline hook...
[    1.685554] systemd[1]: Starting Setup Virtual Console...
[    1.688181] systemd[1]: Starting Apply Kernel Variables...
[    1.690732] systemd[1]: Starting Create list of required static device nodes for the current kernel...
[    1.694979] systemd[1]: Starting Journal Service...
[    1.697771] systemd[1]: Started Apply Kernel Variables.
[    1.701175] systemd[1]: Started Create list of required static device nodes for the current kernel.
[    1.704321] systemd[1]: Starting Create Static Device Nodes in /dev...
[    1.708670] systemd[1]: Started Create Static Device Nodes in /dev.
[    1.749307] systemd[1]: Started Journal Service.
[    1.781823] random: fast init done
[    1.836037] FDC 0 is a S82078B
[    1.866586] usb 1-1: new full-speed USB device number 2 using uhci_hcd
[    1.900878] libata version 3.00 loaded.
[    1.934535] ACPI: PCI Interrupt Link [LNKC] enabled at IRQ 10
[    1.936183] virtio-pci 0000:00:03.0: virtio_pci: leaving for legacy driver
[    1.939008] ata_piix 0000:00:01.1: version 2.13
[    1.940420] scsi host0: ata_piix
[    1.941741] scsi host1: ata_piix
[    1.942826] ata1: PATA max MWDMA2 cmd 0x1f0 ctl 0x3f6 bmdma 0x90c0 irq 14
[    1.944309] ata2: PATA max MWDMA2 cmd 0x170 ctl 0x376 bmdma 0x90c8 irq 15
[    2.001068] ACPI: PCI Interrupt Link [LNKA] enabled at IRQ 10
[    2.010567] [TTM] Zone  kernel: Available graphics memory: 4004288 kiB
[    2.023642] [TTM] Zone   dma32: Available graphics memory: 2097152 kiB
[    2.025053] [TTM] Initializing pool allocator
[    2.028697] [TTM] Initializing DMA pool allocator
[    2.030045] [drm] fb mappable at 0xFA000000
[    2.031061] [drm] vram aper at 0xFA000000
[    2.032054] [drm] size 33554432
[    2.032886] [drm] fb depth is 16
[    2.033797] [drm]    pitch is 2048
[    2.034835] fbcon: cirrusdrmfb (fb0) is primary device
[    2.050434] Console: switching to colour frame buffer device 128x48
[    2.052410] cirrus 0000:00:02.0: fb0: cirrusdrmfb frame buffer device
[    2.070126] ACPI: PCI Interrupt Link [LNKB] enabled at IRQ 11
[    2.099576] [drm] Initialized cirrus 1.0.0 20110418 for 0000:00:02.0 on minor 0
[    2.116284] virtio-pci 0000:04:04.0: virtio_pci: leaving for legacy driver
[    2.120260] virtio-pci 0000:00:0c.0: irq 24 for MSI/MSI-X
[    2.122076] virtio-pci 0000:02:01.0: irq 26 for MSI/MSI-X
[    2.122090] virtio-pci 0000:02:01.0: irq 27 for MSI/MSI-X
[    2.122282] virtio-pci 0000:00:0c.0: irq 25 for MSI/MSI-X
[    2.122941] virtio-pci 0000:00:03.0: irq 28 for MSI/MSI-X
[    2.122957] virtio-pci 0000:00:03.0: irq 29 for MSI/MSI-X
[    2.122970] virtio-pci 0000:00:03.0: irq 30 for MSI/MSI-X
[    2.124375] virtio_blk virtio3: [vda] 209715200 512-byte logical blocks (107 GB/100 GiB)
[    2.124393] virtio-pci 0000:04:04.0: irq 31 for MSI/MSI-X
[    2.124412] virtio-pci 0000:04:04.0: irq 32 for MSI/MSI-X
[    2.124426] virtio-pci 0000:04:04.0: irq 33 for MSI/MSI-X
[    2.132592]  vda: vda1
[    2.380607] tsc: Refined TSC clocksource calibration: 2599.997 MHz
[    5.851800] usb 1-1: New USB device found, idVendor=0627, idProduct=0001, bcdDevice= 0.00
[    5.852589] usb 1-1: New USB device strings: Mfr=1, Product=3, SerialNumber=5
[    5.853233] usb 1-1: Product: QEMU USB Tablet
[    5.853625] usb 1-1: Manufacturer: QEMU
[    5.853959] usb 1-1: SerialNumber: 42
[    6.653140] input: QEMU QEMU USB Tablet as /devices/pci0000:00/0000:00:01.2/usb1/1-1/1-1:1.0/input/input4
[    6.654155] hid-generic 0003:0627:0001.0001: input,hidraw0: USB HID v0.01 Pointer [QEMU QEMU USB Tablet] on usb-0000:00:01.2-1/input0
[    6.831627] EXT4-fs (vda1): mounted filesystem with ordered data mode. Opts: (null)
[    7.054349] systemd-journald[105]: Received SIGTERM from PID 1 (systemd).
[    7.139475] SELinux:  Disabled at runtime.
[    7.140203] SELinux:  Unregistering netfilter hooks
[    7.185560] type=1404 audit(1630134310.116:2): selinux=0 auid=4294967295 ses=4294967295
[    7.215381] ip_tables: (C) 2000-2006 Netfilter Core Team
[    7.216954] systemd[1]: Inserted module 'ip_tables'
[    7.358522] EXT4-fs (vda1): re-mounted. Opts: (null)
[    7.379117] systemd-journald[354]: Received request to flush runtime journal from PID 1
[    7.459590] type=1305 audit(1630134310.390:3): audit_pid=411 old=0 auid=4294967295 ses=4294967295 res=1
[    7.469700] piix4_smbus 0000:00:01.3: SMBus Host Controller at 0x700, revision 0
[    7.519897] input: PC Speaker as /devices/platform/pcspkr/input/input5
[    7.524751] cryptd: max_cpu_qlen set to 1000
[    7.542590] AVX2 version of gcm_enc/dec engaged.
[    7.543658] AES CTR mode by8 optimization enabled
[    7.555743] alg: No test for __gcm-aes-aesni (__driver-gcm-aes-aesni)
[    7.557081] alg: No test for __generic-gcm-aes-aesni (__driver-generic-gcm-aes-aesni)
[    7.557104] ppdev: user-space parallel port driver

----->>>---->>>  /var/log/messages(��Ҫroot)
Aug 29 13:33:22 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:33:32 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:33:51 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:34:01 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:34:14 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:34:28 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:34:44 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:35:02 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:35:23 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:35:32 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:35:42 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:35:57 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:36:10 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:36:17 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:36:31 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:36:41 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:36:50 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:37:03 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:37:17 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:37:32 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:37:43 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:37:50 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:38:02 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:38:15 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:38:30 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:38:45 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:38:55 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:39:08 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:39:17 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:39:31 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:39:48 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:40:07 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:40:14 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:40:28 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:40:39 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:40:55 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:41:12 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:41:21 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:41:31 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:41:38 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:41:47 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:42:01 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:42:11 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:42:24 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:42:37 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:42:57 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:43:15 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:43:31 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:43:42 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:43:57 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:44:13 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:44:20 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:44:30 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:44:48 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:45:01 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:45:18 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:45:33 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:45:43 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:45:56 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:46:12 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:46:23 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:46:42 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:47:02 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:47:23 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:47:32 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:47:50 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:48:09 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:48:26 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:48:37 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:48:54 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:49:07 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:49:22 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:49:33 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:49:52 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:49:59 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:50:14 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:50:31 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:50:43 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:50:56 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:51:08 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:51:24 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:51:32 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:51:45 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:51:55 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:52:15 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:52:34 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:52:46 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:53:07 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:53:16 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:53:27 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:53:34 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:53:45 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:54:07 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:54:21 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:54:29 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:54:48 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:55:07 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:55:22 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:55:29 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:55:38 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:55:50 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:56:03 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:56:10 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:56:24 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:56:32 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:56:47 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:57:06 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:57:21 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:57:36 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:57:51 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:58:07 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:58:26 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:58:36 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:58:49 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:59:03 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:59:16 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:59:31 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 13:59:44 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:00:05 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:00:13 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:00:21 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:00:29 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:00:41 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:00:51 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:01:01 db03 systemd: Started Session 40 of user root.
Aug 29 14:01:12 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:01:23 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:01:37 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:01:45 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:01:54 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:02:12 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:02:33 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:02:46 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:03:01 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:03:15 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:03:30 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:03:47 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:04:00 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:04:16 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:04:37 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:04:50 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:05:04 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:05:24 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:05:34 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:05:50 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:06:00 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:06:13 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:06:24 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:06:35 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:06:52 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:07:07 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:07:28 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:07:40 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:07:52 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:08:07 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:08:24 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:08:32 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:08:39 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:08:56 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:09:15 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:09:28 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:09:42 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:09:51 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:09:59 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:10:15 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:10:22 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:10:38 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:10:57 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:11:14 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:11:30 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:11:41 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:11:49 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:12:03 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:12:21 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:12:31 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:12:39 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:12:55 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:13:04 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:13:21 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:13:28 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:13:40 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:13:59 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:14:10 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:14:28 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:14:40 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:14:54 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:15:10 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:15:21 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:15:36 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:15:51 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:16:04 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:16:19 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:16:40 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:16:57 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:17:12 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:17:29 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:17:43 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:18:04 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:18:22 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:18:40 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:18:56 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:19:10 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:19:17 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:19:28 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:19:44 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:19:55 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:20:05 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:20:15 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:20:23 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:20:35 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:20:46 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:21:06 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:21:17 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:21:28 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:21:48 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:21:56 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:22:03 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:22:10 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:22:25 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:22:40 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:22:49 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:23:09 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:23:18 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:23:29 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:23:49 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:24:06 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:24:25 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:24:42 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:25:00 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:25:21 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:25:31 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:25:45 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:25:55 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:26:05 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:26:17 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:26:30 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:26:50 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:27:07 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:27:18 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:27:39 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:27:51 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:28:01 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:28:13 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:28:22 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:28:39 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:29:00 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:29:07 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:29:20 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:29:33 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:29:40 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:29:48 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:30:04 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:30:20 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:30:39 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:30:51 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:31:08 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:31:19 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:31:30 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:31:42 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:31:50 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:32:02 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:32:14 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:32:31 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:32:45 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:32:52 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:33:04 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:33:20 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:33:30 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:33:43 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:33:52 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:34:00 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:34:13 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:34:21 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:34:32 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:34:40 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:34:51 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:35:05 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:35:17 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:35:32 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:35:47 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:36:07 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:36:25 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:36:44 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:36:55 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:37:07 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:37:27 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:37:40 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:37:52 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:38:12 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:38:25 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:38:39 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:38:55 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:39:15 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:39:30 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:39:40 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:40:01 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:40:21 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:40:29 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:40:38 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:40:51 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:40:59 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:41:12 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:41:19 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:41:27 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:41:43 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:42:02 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:42:11 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:42:26 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:42:41 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:42:55 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:43:02 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:43:23 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:43:35 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:43:48 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:43:57 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:44:11 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:44:32 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:44:44 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:44:57 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:45:12 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:45:21 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:45:30 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:45:45 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:45:58 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:46:11 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:46:25 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:46:41 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:46:50 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:47:03 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:47:20 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:47:36 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:47:53 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:48:12 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:48:19 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:48:31 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:48:39 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:48:46 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:48:57 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:49:12 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:49:32 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:49:49 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:49:56 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:50:06 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:50:13 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:50:22 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:50:37 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:50:46 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:51:03 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:51:16 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:51:36 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:51:44 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:51:56 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:52:03 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:52:10 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:52:19 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:52:34 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:52:41 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:52:53 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:53:03 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:53:23 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:53:44 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:54:04 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:54:17 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:54:38 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:54:54 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:55:05 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:55:20 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:55:28 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:55:36 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:55:45 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:56:00 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:56:18 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:56:34 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:56:52 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:57:01 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:57:12 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:57:28 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:57:38 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:57:50 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:58:00 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:58:12 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:58:25 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:58:35 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:58:54 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:59:14 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:59:35 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 14:59:50 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:00:03 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:00:10 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:00:19 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:00:31 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:00:40 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:00:53 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:01:01 db03 systemd: Started Session 41 of user root.
Aug 29 15:01:02 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:01:09 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:01:23 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:01:32 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:01:46 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:02:04 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:02:13 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:02:28 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:02:42 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:02:51 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:03:01 db03 systemd: Started Session 42 of user root.
Aug 29 15:03:01 db03 systemd-logind: New session 42 of user root.
Aug 29 15:03:01 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:03:05 db03 systemd: Started Session 43 of user root.
Aug 29 15:03:05 db03 systemd-logind: New session 43 of user root.
Aug 29 15:03:16 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:03:35 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:03:55 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:04:05 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:04:20 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:04:35 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:04:49 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:05:09 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x7f2f56f7)
Aug 29 15:05:12 db03 NetworkManager[505]: <info>  [1630220712.4951] dhcp4 (eth1): state changed bound -> expire
Aug 29 15:05:12 db03 NetworkManager[505]: <info>  [1630220712.4952] device (eth1): DHCPv4: 480 seconds grace period started
Aug 29 15:05:12 db03 NetworkManager[505]: <info>  [1630220712.4988] dhcp4 (eth1): state changed expire -> unknown
Aug 29 15:05:12 db03 dhclient[710]: DHCPDISCOVER on eth1 to 255.255.255.255 port 67 interval 7 (xid=0x700b2027)
Aug 29 15:05:12 db03 dhclient[710]: DHCPREQUEST on eth1 to 255.255.255.255 port 67 (xid=0x700b2027)
Aug 29 15:05:12 db03 dhclient[710]: DHCPOFFER from 192.168.0.254
Aug 29 15:05:12 db03 dhclient[710]: DHCPACK from 192.168.0.254 (xid=0x700b2027)
Aug 29 15:05:12 db03 NetworkManager[505]: <info>  [1630220712.5032] dhcp4 (eth1):   address 192.168.0.129
Aug 29 15:05:12 db03 NetworkManager[505]: <info>  [1630220712.5032] dhcp4 (eth1):   plen 24 (255.255.255.0)
Aug 29 15:05:12 db03 NetworkManager[505]: <info>  [1630220712.5032] dhcp4 (eth1):   lease time 86400
Aug 29 15:05:12 db03 NetworkManager[505]: <info>  [1630220712.5032] dhcp4 (eth1):   hostname 'host-192-168-0-129'
Aug 29 15:05:12 db03 NetworkManager[505]: <info>  [1630220712.5032] dhcp4 (eth1):   nameserver '100.125.1.250'
Aug 29 15:05:12 db03 NetworkManager[505]: <info>  [1630220712.5032] dhcp4 (eth1):   nameserver '100.125.64.250'
Aug 29 15:05:12 db03 NetworkManager[505]: <info>  [1630220712.5032] dhcp4 (eth1):   domain name 'openstacklocal'
Aug 29 15:05:12 db03 NetworkManager[505]: <info>  [1630220712.5032] dhcp4 (eth1): state changed unknown -> bound
Aug 29 15:05:12 db03 dbus[503]: [system] Activating via systemd: service name='org.freedesktop.nm_dispatcher' unit='dbus-org.freedesktop.nm-dispatcher.service'
Aug 29 15:05:12 db03 systemd: Starting Network Manager Script Dispatcher Service...
Aug 29 15:05:12 db03 dhclient[710]: bound to 192.168.0.129 -- renewal in 34283 seconds.
Aug 29 15:05:12 db03 dbus[503]: [system] Successfully activated service 'org.freedesktop.nm_dispatcher'
Aug 29 15:05:12 db03 systemd: Started Network Manager Script Dispatcher Service.
Aug 29 15:05:12 db03 nm-dispatcher: find-scripts: Cannot execute '/etc/NetworkManager/dispatcher.d/hook-network-manager': writable by group or other, or set-UID.
Aug 29 15:05:12 db03 nm-dispatcher: req:1 'dhcp4-change' [eth1]: new request (3 scripts)
Aug 29 15:05:12 db03 nm-dispatcher: req:1 'dhcp4-change' [eth1]: start running ordered scripts...
Aug 29 15:11:31 db03 systemd-logind: New session 44 of user root.
Aug 29 15:11:31 db03 systemd: Started Session 44 of user root.
Aug 29 15:11:31 db03 systemd-logind: Removed session 44.
Aug 29 15:20:22 db03 systemd: Started Session 45 of user root.
Aug 29 15:20:22 db03 systemd-logind: New session 45 of user root.
Aug 29 15:20:23 db03 systemd-logind: Removed session 45.
Aug 29 15:21:46 db03 systemd: Starting Cleanup of Temporary Directories...
Aug 29 15:21:46 db03 systemd: Started Cleanup of Temporary Directories.
Aug 29 15:40:46 db03 systemd-logind: Removed session 42.
Aug 29 15:41:28 db03 systemd-logind: New session 46 of user root.
Aug 29 15:41:28 db03 systemd: Started Session 46 of user root.
Aug 29 15:46:25 db03 systemd: Started Session 47 of user root.
Aug 29 15:46:25 db03 systemd-logind: New session 47 of user root.
Aug 29 15:46:54 db03 su: (to atlasdb) root on pts/2
Aug 29 16:01:01 db03 systemd: Started Session 48 of user root.
Aug 29 16:01:47 db03 su: (to atlasdb) root on pts/2
Aug 29 16:09:17 db03 systemd: Created slice User Slice of atlasdb.
Aug 29 16:09:17 db03 systemd: Started Session 49 of user atlasdb.
Aug 29 16:09:17 db03 systemd-logind: New session 49 of user atlasdb.
Aug 29 16:09:17 db03 systemd-logind: Removed session 49.
Aug 29 16:09:17 db03 systemd: Removed slice User Slice of atlasdb.
Aug 29 16:18:59 db03 systemd-logind: Removed session 43.
Aug 29 16:29:05 db03 systemd-logind: Removed session 20.
Aug 29 16:36:11 db03 dhclient[710]: receive_packet failed on eth1: Network is down
Aug 29 16:36:11 db03 NetworkManager[505]: <info>  [1630226171.2195] device (eth1): state change: activated -> unmanaged (reason 'removed', sys-iface-state: 'removed')
Aug 29 16:36:11 db03 NetworkManager[505]: <info>  [1630226171.2277] dhcp4 (eth1): canceled DHCP transaction, DHCP client pid 710
Aug 29 16:36:11 db03 NetworkManager[505]: <info>  [1630226171.2277] dhcp4 (eth1): state changed bound -> done
Aug 29 16:36:11 db03 dbus[503]: [system] Activating via systemd: service name='org.freedesktop.nm_dispatcher' unit='dbus-org.freedesktop.nm-dispatcher.service'
Aug 29 16:36:11 db03 systemd: Starting Network Manager Script Dispatcher Service...
Aug 29 16:36:11 db03 dbus[503]: [system] Successfully activated service 'org.freedesktop.nm_dispatcher'
Aug 29 16:36:11 db03 systemd: Started Network Manager Script Dispatcher Service.
Aug 29 16:36:11 db03 nm-dispatcher: find-scripts: Cannot execute '/etc/NetworkManager/dispatcher.d/hook-network-manager': writable by group or other, or set-UID.
Aug 29 16:36:11 db03 nm-dispatcher: req:1 'down' [eth1]: new request (3 scripts)
Aug 29 16:36:11 db03 nm-dispatcher: req:1 'down' [eth1]: start running ordered scripts...
Aug 29 16:54:50 db03 su: (to atlasdb) root on pts/2
Aug 29 16:58:05 db03 yum[18058]: Installed: 1:telnet-0.17-66.el7.x86_64
Aug 29 16:59:46 db03 systemd-logind: Removed session 46.
Aug 29 17:01:01 db03 systemd: Started Session 50 of user root.
Aug 29 17:03:30 db03 su: (to atlasdb) root on pts/2
Aug 29 18:01:01 db03 systemd: Started Session 51 of user root.
Aug 29 18:09:55 db03 systemd: Started Session 52 of user root.
Aug 29 18:09:55 db03 systemd-logind: New session 52 of user root.
Aug 29 18:10:03 db03 su: (to atlasdb) root on pts/0
Aug 29 18:11:40 db03 systemd: Got automount request for /proc/sys/fs/binfmt_misc, triggered by 18578 (sysctl)
Aug 29 18:11:40 db03 systemd: Mounting Arbitrary Executable File Formats File System...
Aug 29 18:11:40 db03 systemd: Mounted Arbitrary Executable File Formats File System.
Aug 29 18:11:40 db03 kernel: nr_pdflush_threads exported in /proc is scheduled for removal
Aug 29 18:12:42 db03 su: (to atlasdb) root on pts/0
Aug 29 18:14:20 db03 kernel: nf_conntrack version 0.5.0 (65536 buckets, 262144 max)
Aug 29 18:15:28 db03 systemd-logind: Removed session 52.
Aug 29 19:01:01 db03 systemd: Started Session 53 of user root.
Aug 29 20:01:01 db03 systemd: Started Session 54 of user root.
Aug 29 21:01:01 db03 systemd: Started Session 55 of user root.
Aug 29 22:01:01 db03 systemd: Started Session 56 of user root.
Aug 29 22:48:22 db03 systemd: Started Session 57 of user root.
Aug 29 22:48:22 db03 systemd-logind: New session 57 of user root.
Aug 29 22:49:31 db03 su: (to atlasdb) root on pts/0
Aug 29 22:52:39 db03 systemd: Started Session 58 of user root.
Aug 29 22:52:39 db03 systemd-logind: New session 58 of user root.
Aug 29 22:52:44 db03 su: (to atlasdb) root on pts/1

----->>>---->>>  /var/log/secure(��Ҫroot)
Aug 29 04:04:46 db03 sshd[5471]: pam_unix(sshd:session): session closed for user root
Aug 29 04:23:45 db03 sshd[13761]: Did not receive identification string from 194.163.128.218 port 36228
Aug 29 04:56:15 db03 sshd[13881]: Invalid user guest from 164.90.155.183 port 47654
Aug 29 04:56:15 db03 sshd[13881]: input_userauth_request: invalid user guest [preauth]
Aug 29 04:56:15 db03 sshd[13881]: pam_unix(sshd:auth): check pass; user unknown
Aug 29 04:56:15 db03 sshd[13881]: pam_unix(sshd:auth): authentication failure; logname= uid=0 euid=0 tty=ssh ruser= rhost=164.90.155.183
Aug 29 04:56:18 db03 sshd[13881]: Failed password for invalid user guest from 164.90.155.183 port 47654 ssh2
Aug 29 04:56:18 db03 sshd[13881]: Received disconnect from 164.90.155.183 port 47654:11: Bye Bye [preauth]
Aug 29 04:56:18 db03 sshd[13881]: Disconnected from 164.90.155.183 port 47654 [preauth]
Aug 29 06:57:14 db03 sshd[14262]: pam_unix(sshd:auth): authentication failure; logname= uid=0 euid=0 tty=ssh ruser= rhost=209.141.54.197  user=root
Aug 29 06:57:14 db03 sshd[14262]: pam_succeed_if(sshd:auth): requirement "uid >= 1000" not met by user "root"
Aug 29 06:57:17 db03 sshd[14262]: Failed password for root from 209.141.54.197 port 46530 ssh2
Aug 29 06:57:17 db03 sshd[14262]: Received disconnect from 209.141.54.197 port 46530:11: Bye Bye [preauth]
Aug 29 06:57:17 db03 sshd[14262]: Disconnected from 209.141.54.197 port 46530 [preauth]
Aug 29 06:57:20 db03 sshd[14264]: Invalid user oracle from 209.141.54.197 port 42682
Aug 29 06:57:20 db03 sshd[14264]: input_userauth_request: invalid user oracle [preauth]
Aug 29 06:57:20 db03 sshd[14264]: pam_unix(sshd:auth): check pass; user unknown
Aug 29 06:57:20 db03 sshd[14264]: pam_unix(sshd:auth): authentication failure; logname= uid=0 euid=0 tty=ssh ruser= rhost=209.141.54.197
Aug 29 06:57:22 db03 sshd[14264]: Failed password for invalid user oracle from 209.141.54.197 port 42682 ssh2
Aug 29 06:57:22 db03 sshd[14264]: Received disconnect from 209.141.54.197 port 42682:11: Bye Bye [preauth]
Aug 29 06:57:22 db03 sshd[14264]: Disconnected from 209.141.54.197 port 42682 [preauth]
Aug 29 07:53:40 db03 sshd[14427]: Did not receive identification string from 46.101.2.225 port 61000
Aug 29 08:40:43 db03 sshd[14588]: Invalid user fabian from 5.196.74.238 port 46470
Aug 29 08:40:43 db03 sshd[14588]: input_userauth_request: invalid user fabian [preauth]
Aug 29 08:40:43 db03 sshd[14588]: pam_unix(sshd:auth): check pass; user unknown
Aug 29 08:40:43 db03 sshd[14588]: pam_unix(sshd:auth): authentication failure; logname= uid=0 euid=0 tty=ssh ruser= rhost=5.196.74.238
Aug 29 08:40:45 db03 sshd[14588]: Failed password for invalid user fabian from 5.196.74.238 port 46470 ssh2
Aug 29 08:40:45 db03 sshd[14588]: Received disconnect from 5.196.74.238 port 46470:11: Bye Bye [preauth]
Aug 29 08:40:45 db03 sshd[14588]: Disconnected from 5.196.74.238 port 46470 [preauth]
Aug 29 10:58:12 db03 sshd[15028]: Did not receive identification string from 114.115.154.156 port 40410
Aug 29 11:50:31 db03 sshd[15190]: Invalid user cfabara from 185.169.177.98 port 47580
Aug 29 11:50:31 db03 sshd[15190]: input_userauth_request: invalid user cfabara [preauth]
Aug 29 11:50:31 db03 sshd[15190]: pam_unix(sshd:auth): check pass; user unknown
Aug 29 11:50:31 db03 sshd[15190]: pam_unix(sshd:auth): authentication failure; logname= uid=0 euid=0 tty=ssh ruser= rhost=185.169.177.98
Aug 29 11:50:34 db03 sshd[15190]: Failed password for invalid user cfabara from 185.169.177.98 port 47580 ssh2
Aug 29 11:50:34 db03 sshd[15190]: Received disconnect from 185.169.177.98 port 47580:11: Bye Bye [preauth]
Aug 29 11:50:34 db03 sshd[15190]: Disconnected from 185.169.177.98 port 47580 [preauth]
Aug 29 15:03:01 db03 sshd[15827]: Accepted password for root from 59.41.118.150 port 59928 ssh2
Aug 29 15:03:01 db03 sshd[15827]: pam_unix(sshd:session): session opened for user root by (uid=0)
Aug 29 15:03:05 db03 sshd[15829]: Accepted password for root from 59.41.118.150 port 59932 ssh2
Aug 29 15:03:05 db03 sshd[15829]: pam_unix(sshd:session): session opened for user root by (uid=0)
Aug 29 15:11:31 db03 sshd[15920]: Accepted password for root from 192.168.0.170 port 56646 ssh2
Aug 29 15:11:31 db03 sshd[15920]: pam_unix(sshd:session): session opened for user root by (uid=0)
Aug 29 15:11:31 db03 sshd[15920]: Received disconnect from 192.168.0.170 port 56646:11: disconnected by user
Aug 29 15:11:31 db03 sshd[15920]: Disconnected from 192.168.0.170 port 56646
Aug 29 15:11:31 db03 sshd[15920]: pam_unix(sshd:session): session closed for user root
Aug 29 15:20:17 db03 sshd[16033]: pam_unix(sshd:auth): authentication failure; logname= uid=0 euid=0 tty=ssh ruser= rhost=192.168.0.170  user=root
Aug 29 15:20:17 db03 sshd[16033]: pam_succeed_if(sshd:auth): requirement "uid >= 1000" not met by user "root"
Aug 29 15:20:18 db03 sshd[16033]: Failed password for root from 192.168.0.170 port 57170 ssh2
Aug 29 15:20:22 db03 sshd[16033]: Accepted password for root from 192.168.0.170 port 57170 ssh2
Aug 29 15:20:22 db03 sshd[16033]: pam_unix(sshd:session): session opened for user root by (uid=0)
Aug 29 15:20:23 db03 sshd[16033]: Received disconnect from 192.168.0.170 port 57170:11: disconnected by user
Aug 29 15:20:23 db03 sshd[16033]: Disconnected from 192.168.0.170 port 57170
Aug 29 15:20:23 db03 sshd[16033]: pam_unix(sshd:session): session closed for user root
Aug 29 15:27:11 db03 sshd[16385]: Did not receive identification string from 37.0.10.41 port 42090
Aug 29 15:30:13 db03 sshd[16579]: Invalid user fabian from 5.196.74.238 port 52496
Aug 29 15:30:13 db03 sshd[16579]: input_userauth_request: invalid user fabian [preauth]
Aug 29 15:30:13 db03 sshd[16579]: pam_unix(sshd:auth): check pass; user unknown
Aug 29 15:30:13 db03 sshd[16579]: pam_unix(sshd:auth): authentication failure; logname= uid=0 euid=0 tty=ssh ruser= rhost=5.196.74.238
Aug 29 15:30:14 db03 sshd[16579]: Failed password for invalid user fabian from 5.196.74.238 port 52496 ssh2
Aug 29 15:30:15 db03 sshd[16579]: Received disconnect from 5.196.74.238 port 52496:11: Bye Bye [preauth]
Aug 29 15:30:15 db03 sshd[16579]: Disconnected from 5.196.74.238 port 52496 [preauth]
Aug 29 15:40:46 db03 sshd[15827]: pam_unix(sshd:session): session closed for user root
Aug 29 15:41:28 db03 sshd[16648]: Accepted password for root from 59.41.118.150 port 61171 ssh2
Aug 29 15:41:28 db03 sshd[16648]: pam_unix(sshd:session): session opened for user root by (uid=0)
Aug 29 15:46:25 db03 sshd[16699]: Accepted password for root from 59.41.118.150 port 57375 ssh2
Aug 29 15:46:25 db03 sshd[16699]: pam_unix(sshd:session): session opened for user root by (uid=0)
Aug 29 15:46:54 db03 su: pam_unix(su-l:session): session opened for user atlasdb by root(uid=0)
Aug 29 15:57:58 db03 su: pam_unix(su-l:session): session closed for user atlasdb
Aug 29 16:01:47 db03 su: pam_unix(su-l:session): session opened for user atlasdb by root(uid=0)
Aug 29 16:09:17 db03 sshd[16878]: Accepted publickey for atlasdb from 192.168.0.170 port 60132 ssh2: RSA SHA256:+/8N0EeC4xW+g3+IWsNZk5pg0PD1XlhH2eVWrJqhBVQ
Aug 29 16:09:17 db03 sshd[16878]: pam_unix(sshd:session): session opened for user atlasdb by (uid=0)
Aug 29 16:09:17 db03 sshd[16880]: Received disconnect from 192.168.0.170 port 60132:11: disconnected by user
Aug 29 16:09:17 db03 sshd[16880]: Disconnected from 192.168.0.170 port 60132
Aug 29 16:09:17 db03 sshd[16878]: pam_unix(sshd:session): session closed for user atlasdb
Aug 29 16:18:59 db03 sshd[15829]: pam_unix(sshd:session): session closed for user root
Aug 29 16:40:39 db03 su: pam_unix(su-l:session): session closed for user atlasdb
Aug 29 16:41:11 db03 sudo: atlasdb : TTY=pts/2 ; PWD=/home/atlasdb/patroni ; USER=root ; COMMAND=/sbin/ip addr add 192.168.0.88/22 brd 192.168.0.255 dev eth0 label eth0:1
Aug 29 16:41:11 db03 sudo: pam_unix(sudo:session): session opened for user root by root(uid=0)
Aug 29 16:41:11 db03 sudo: pam_unix(sudo:session): session closed for user root
Aug 29 16:41:11 db03 sudo: atlasdb : TTY=pts/2 ; PWD=/home/atlasdb/patroni ; USER=root ; COMMAND=/usr/sbin/arping -q -A -c 1 -I eth0:1 192.168.0.88
Aug 29 16:41:11 db03 sudo: pam_unix(sudo:session): session opened for user root by root(uid=0)
Aug 29 16:41:11 db03 sudo: pam_unix(sudo:session): session closed for user root
Aug 29 16:54:50 db03 su: pam_unix(su-l:session): session opened for user atlasdb by root(uid=0)
Aug 29 16:57:34 db03 su: pam_unix(su-l:session): session closed for user atlasdb
Aug 29 16:59:46 db03 sshd[16648]: pam_unix(sshd:session): session closed for user root
Aug 29 17:03:30 db03 su: pam_unix(su-l:session): session opened for user atlasdb by root(uid=0)
Aug 29 18:09:55 db03 sshd[18484]: Accepted password for root from 59.41.118.150 port 58762 ssh2
Aug 29 18:09:55 db03 sshd[18484]: pam_unix(sshd:session): session opened for user root by (uid=0)
Aug 29 18:10:03 db03 su: pam_unix(su-l:session): session opened for user atlasdb by root(uid=0)
Aug 29 18:12:28 db03 su: pam_unix(su-l:session): session closed for user atlasdb
Aug 29 18:12:42 db03 su: pam_unix(su-l:session): session opened for user atlasdb by root(uid=0)
Aug 29 18:12:48 db03 su: pam_unix(su-l:session): session closed for user atlasdb
Aug 29 18:15:28 db03 sshd[18484]: pam_unix(sshd:session): session closed for user root
Aug 29 19:12:45 db03 sshd[22172]: Did not receive identification string from 209.141.48.211 port 34202
Aug 29 19:15:50 db03 sshd[16699]: pam_unix(sshd:session): session closed for user root
Aug 29 19:15:50 db03 su: pam_unix(su-l:session): session closed for user atlasdb
Aug 29 19:18:07 db03 sshd[22470]: Invalid user cristopher from 49.233.30.82 port 50558
Aug 29 19:18:07 db03 sshd[22470]: input_userauth_request: invalid user cristopher [preauth]
Aug 29 19:18:07 db03 sshd[22470]: pam_unix(sshd:auth): check pass; user unknown
Aug 29 19:18:07 db03 sshd[22470]: pam_unix(sshd:auth): authentication failure; logname= uid=0 euid=0 tty=ssh ruser= rhost=49.233.30.82
Aug 29 19:18:09 db03 sshd[22470]: Failed password for invalid user cristopher from 49.233.30.82 port 50558 ssh2
Aug 29 19:18:09 db03 sshd[22470]: Received disconnect from 49.233.30.82 port 50558:11: Bye Bye [preauth]
Aug 29 19:18:09 db03 sshd[22470]: Disconnected from 49.233.30.82 port 50558 [preauth]
Aug 29 19:23:43 db03 sshd[22751]: Did not receive identification string from 141.98.10.250 port 57568
Aug 29 20:22:29 db03 sshd[25880]: Invalid user cfengine from 185.169.177.98 port 60644
Aug 29 20:22:29 db03 sshd[25880]: input_userauth_request: invalid user cfengine [preauth]
Aug 29 20:22:29 db03 sshd[25880]: pam_unix(sshd:auth): check pass; user unknown
Aug 29 20:22:29 db03 sshd[25880]: pam_unix(sshd:auth): authentication failure; logname= uid=0 euid=0 tty=ssh ruser= rhost=185.169.177.98
Aug 29 20:22:30 db03 sshd[25880]: Failed password for invalid user cfengine from 185.169.177.98 port 60644 ssh2
Aug 29 20:22:31 db03 sshd[25880]: Received disconnect from 185.169.177.98 port 60644:11: Bye Bye [preauth]
Aug 29 20:22:31 db03 sshd[25880]: Disconnected from 185.169.177.98 port 60644 [preauth]
Aug 29 20:51:15 db03 sshd[27411]: Did not receive identification string from 205.185.113.39 port 57586
Aug 29 21:01:25 db03 sshd[27960]: Invalid user gitu from 180.76.107.245 port 59180
Aug 29 21:01:25 db03 sshd[27960]: input_userauth_request: invalid user gitu [preauth]
Aug 29 21:01:25 db03 sshd[27960]: pam_unix(sshd:auth): check pass; user unknown
Aug 29 21:01:25 db03 sshd[27960]: pam_unix(sshd:auth): authentication failure; logname= uid=0 euid=0 tty=ssh ruser= rhost=180.76.107.245
Aug 29 21:01:26 db03 sshd[27960]: Failed password for invalid user gitu from 180.76.107.245 port 59180 ssh2
Aug 29 21:01:26 db03 sshd[27960]: Received disconnect from 180.76.107.245 port 59180:11: Bye Bye [preauth]
Aug 29 21:01:26 db03 sshd[27960]: Disconnected from 180.76.107.245 port 59180 [preauth]
Aug 29 21:06:32 db03 sshd[28250]: pam_unix(sshd:auth): authentication failure; logname= uid=0 euid=0 tty=ssh ruser= rhost=164.90.155.183  user=root
Aug 29 21:06:32 db03 sshd[28250]: pam_succeed_if(sshd:auth): requirement "uid >= 1000" not met by user "root"
Aug 29 21:06:34 db03 sshd[28250]: Failed password for root from 164.90.155.183 port 41032 ssh2
Aug 29 21:06:34 db03 sshd[28250]: Received disconnect from 164.90.155.183 port 41032:11: Bye Bye [preauth]
Aug 29 21:06:34 db03 sshd[28250]: Disconnected from 164.90.155.183 port 41032 [preauth]
Aug 29 22:48:22 db03 sshd[1240]: Accepted password for root from 59.41.118.150 port 57937 ssh2
Aug 29 22:48:22 db03 sshd[1240]: pam_unix(sshd:session): session opened for user root by (uid=0)
Aug 29 22:49:31 db03 su: pam_unix(su-l:session): session opened for user atlasdb by root(uid=0)
Aug 29 22:50:44 db03 su: pam_unix(su-l:session): session closed for user atlasdb
Aug 29 22:52:39 db03 sshd[1687]: Accepted password for root from 59.41.118.150 port 59911 ssh2
Aug 29 22:52:39 db03 sshd[1687]: pam_unix(sshd:session): session opened for user root by (uid=0)
Aug 29 22:52:44 db03 su: pam_unix(su-l:session): session opened for user atlasdb by root(uid=0)
Aug 29 22:52:59 db03 sshd[1752]: Did not receive identification string from 124.70.139.46 port 59556
Aug 29 22:53:22 db03 sshd[1775]: Invalid user elasticsearch from 124.70.139.46 port 52514
Aug 29 22:53:22 db03 sshd[1775]: input_userauth_request: invalid user elasticsearch [preauth]
Aug 29 22:53:22 db03 sshd[1775]: pam_unix(sshd:auth): check pass; user unknown
Aug 29 22:53:22 db03 sshd[1775]: pam_unix(sshd:auth): authentication failure; logname= uid=0 euid=0 tty=ssh ruser= rhost=124.70.139.46
Aug 29 22:53:24 db03 sshd[1778]: Invalid user es from 124.70.139.46 port 58662
Aug 29 22:53:24 db03 sshd[1778]: input_userauth_request: invalid user es [preauth]
Aug 29 22:53:24 db03 sshd[1778]: pam_unix(sshd:auth): check pass; user unknown
Aug 29 22:53:24 db03 sshd[1778]: pam_unix(sshd:auth): authentication failure; logname= uid=0 euid=0 tty=ssh ruser= rhost=124.70.139.46
Aug 29 22:53:25 db03 sshd[1775]: Failed password for invalid user elasticsearch from 124.70.139.46 port 52514 ssh2
Aug 29 22:53:25 db03 sshd[1775]: Received disconnect from 124.70.139.46 port 52514:11: Normal Shutdown, Thank you for playing [preauth]
Aug 29 22:53:25 db03 sshd[1775]: Disconnected from 124.70.139.46 port 52514 [preauth]
Aug 29 22:53:25 db03 sshd[1781]: Connection reset by 124.70.139.46 port 36562 [preauth]
Aug 29 22:53:26 db03 sshd[1778]: Failed password for invalid user es from 124.70.139.46 port 58662 ssh2
Aug 29 22:53:26 db03 sshd[1778]: Received disconnect from 124.70.139.46 port 58662:11: Normal Shutdown, Thank you for playing [preauth]
Aug 29 22:53:26 db03 sshd[1778]: Disconnected from 124.70.139.46 port 58662 [preauth]
Aug 29 22:53:39 db03 sshd[1947]: pam_unix(sshd:auth): authentication failure; logname= uid=0 euid=0 tty=ssh ruser= rhost=124.70.139.46  user=root
Aug 29 22:53:39 db03 sshd[1947]: pam_succeed_if(sshd:auth): requirement "uid >= 1000" not met by user "root"
Aug 29 22:53:40 db03 sshd[1947]: Failed password for root from 124.70.139.46 port 47734 ssh2
Aug 29 22:53:40 db03 sshd[1947]: Received disconnect from 124.70.139.46 port 47734:11: Normal Shutdown, Thank you for playing [preauth]
Aug 29 22:53:40 db03 sshd[1947]: Disconnected from 124.70.139.46 port 47734 [preauth]
Aug 29 22:53:45 db03 sshd[1954]: pam_unix(sshd:auth): authentication failure; logname= uid=0 euid=0 tty=ssh ruser= rhost=124.70.139.46  user=root
Aug 29 22:53:45 db03 sshd[1954]: pam_succeed_if(sshd:auth): requirement "uid >= 1000" not met by user "root"
Aug 29 22:53:47 db03 sshd[1954]: Failed password for root from 124.70.139.46 port 50244 ssh2
Aug 29 22:53:47 db03 sshd[1954]: Received disconnect from 124.70.139.46 port 50244:11: Normal Shutdown, Thank you for playing [preauth]
Aug 29 22:53:47 db03 sshd[1954]: Disconnected from 124.70.139.46 port 50244 [preauth]
Aug 29 22:53:48 db03 sshd[1958]: pam_unix(sshd:auth): authentication failure; logname= uid=0 euid=0 tty=ssh ruser= rhost=124.70.139.46  user=root
Aug 29 22:53:48 db03 sshd[1958]: pam_succeed_if(sshd:auth): requirement "uid >= 1000" not met by user "root"
Aug 29 22:53:50 db03 sshd[1958]: Failed password for root from 124.70.139.46 port 34306 ssh2
Aug 29 22:53:50 db03 sshd[1958]: Received disconnect from 124.70.139.46 port 34306:11: Normal Shutdown, Thank you for playing [preauth]
Aug 29 22:53:50 db03 sshd[1958]: Disconnected from 124.70.139.46 port 34306 [preauth]
Aug 29 22:54:01 db03 sshd[1973]: refused connect from 124.70.139.46 (124.70.139.46)
Aug 29 22:54:11 db03 sshd[1982]: refused connect from 124.70.139.46 (124.70.139.46)
Aug 29 22:54:15 db03 sshd[1986]: refused connect from 124.70.139.46 (124.70.139.46)
Aug 29 22:54:16 db03 sshd[1988]: refused connect from 124.70.139.46 (124.70.139.46)
Aug 29 22:54:19 db03 sshd[1992]: refused connect from 124.70.139.46 (124.70.139.46)
Aug 29 22:54:23 db03 sshd[1998]: refused connect from 124.70.139.46 (124.70.139.46)
Aug 29 22:54:24 db03 sshd[2000]: refused connect from 124.70.139.46 (124.70.139.46)
Aug 29 22:54:28 db03 sshd[2005]: refused connect from 124.70.139.46 (124.70.139.46)

----->>>---->>>  /var/log/wtmp
           tty1         2021-02-26 14:33               543 id=tty1  term=2 exit=15
           ttyS0        2021-02-26 14:33               544 id=tyS0  term=2 exit=15
           system boot  2021-07-09 17:53
           run-level 3  2021-07-09 17:53
           tty1         2021-07-09 17:54              2216 id=tty1
           ttyS0        2021-07-09 17:54              2215 id=tyS0
LOGIN      tty1         2021-07-09 17:54              2216 id=tty1
LOGIN      ttyS0        2021-07-09 17:54              2215 id=tyS0
           system boot  2021-08-27 19:08
           ttyS0        2021-08-27 19:08              1348 id=tyS0
           tty1         2021-08-27 19:08              1349 id=tty1
LOGIN      ttyS0        2021-08-27 19:08              1348 id=tyS0
LOGIN      tty1         2021-08-27 19:08              1349 id=tty1
           run-level 3  2021-08-27 19:08
root     + pts/0        2021-08-27 19:10   .          1588 (59.42.207.112)
           tty1         2021-08-28 11:10              1349 id=tty1  term=1 exit=0
           tty1         2021-08-28 11:10              4844 id=tty1
LOGIN      tty1         2021-08-28 11:10              4844 id=tty1
root     + pts/1        2021-08-28 11:16   .          4849 (121.36.59.153)
           pts/1        2021-08-28 11:37              4847 id=      term=0 exit=0
           system boot  2021-08-28 14:58
           ttyS0        2021-08-28 14:59              1335 id=tyS0
           tty1         2021-08-28 14:59              1336 id=tty1
LOGIN      tty1         2021-08-28 14:59              1336 id=tty1
LOGIN      ttyS0        2021-08-28 14:59              1335 id=tyS0
           run-level 3  2021-08-28 14:59
root     + pts/0        2021-08-28 15:01   .          1589 (113.66.219.200)
           system boot  2021-08-28 15:05
           ttyS0        2021-08-28 15:05              1395 id=tyS0
           tty1         2021-08-28 15:05              1396 id=tty1
LOGIN      ttyS0        2021-08-28 15:05              1395 id=tyS0
LOGIN      tty1         2021-08-28 15:05              1396 id=tty1
           run-level 3  2021-08-28 15:05
root     + pts/0        2021-08-28 15:25   .          1617 (113.66.219.200)
           pts/0        2021-08-28 18:06              1613 id=      term=0 exit=0
root     + pts/0        2021-08-28 22:30   .          3306 (113.66.219.200)
root     + pts/1        2021-08-29 00:36   .          3910 (113.66.219.200)
           pts/0        2021-08-29 01:49              3302 id=      term=0 exit=0
root     + pts/0        2021-08-29 02:03   .          4685 (113.66.219.200)
atlasdb  ? pts/2        2021-08-29 02:05   ?          4774 (192.168.0.170)
           pts/2        2021-08-29 02:05              4774 id=      term=0 exit=0
atlasdb  ? pts/2        2021-08-29 02:05   ?          4801 (192.168.0.62)
           pts/2        2021-08-29 02:05              4801 id=      term=0 exit=0
atlasdb  ? pts/2        2021-08-29 02:05   ?          4828 (192.168.0.102)
           pts/2        2021-08-29 02:05              4828 id=      term=0 exit=0
root     ? pts/2        2021-08-29 02:48   ?          5473 (113.66.219.200)
           pts/2        2021-08-29 02:53              5469 id=      term=0 exit=0
           pts/1        2021-08-29 03:16              3906 id=      term=0 exit=0
           pts/0        2021-08-29 03:22              4681 id=      term=0 exit=0
root     + pts/1        2021-08-29 15:03   .         15831 (59.41.118.150)
           pts/1        2021-08-29 15:40             15827 id=      term=0 exit=0
root     + pts/1        2021-08-29 15:41   .         16650 (59.41.118.150)
root     ? pts/2        2021-08-29 15:46   ?         16701 (59.41.118.150)
           pts/1        2021-08-29 16:59             16648 id=      term=0 exit=0
root     + pts/0        2021-08-29 18:09   .         18486 (59.41.118.150)
           pts/0        2021-08-29 18:15             18484 id=      term=0 exit=0
           pts/2        2021-08-29 19:15             16699 id=      term=0 exit=0
root     + pts/0        2021-08-29 22:48   .          1242 (59.41.118.150)
root     + pts/1        2021-08-29 22:52   .          1691 (59.41.118.150)


|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
|                       ���ݿ���Ϣ                        |
|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|

----->>>---->>>  ���ݿ�汾:
                                                version
-------------------------------------------------------------------------------------------------------
 AtlasDB 3.0.3 on x86_64-pc-linux-gnu, compiled by gcc (GCC) 4.8.5 20150623 (Red Hat 4.8.5-39), 64-bit
(1 row)

----->>>---->>>  �û��Ѱ�װ�Ĳ���汾:
 current_database | extname | extowner | extnamespace | extrelocatable | extversion | extconfig | extcondition
------------------+---------+----------+--------------+----------------+------------+-----------+--------------
 atlasdb          | plpgsql |       10 |           11 | f              | 1.0        |           |
 atlasdb          | orafce  |       10 |         2200 | f              | 3.10       |           |
(2 rows)

 current_database | extname | extowner | extnamespace | extrelocatable | extversion | extconfig | extcondition
------------------+---------+----------+--------------+----------------+------------+-----------+--------------
 test             | plpgsql |       10 |           11 | f              | 1.0        |           |
 test             | orafce  |       10 |         2200 | f              | 3.10       |           |
(2 rows)

----->>>---->>>  �û�ʹ���˶�������������:
 current_database |     typname     | count
------------------+-----------------+-------
 atlasdb          | text            |   351
 atlasdb          | numeric         |   168
 atlasdb          | varchar         |   120
 atlasdb          | bpchar          |    36
 atlasdb          | int4            |    29
 atlasdb          | sql_identifier  |    25
 atlasdb          | int2            |    15
 atlasdb          | oid             |    15
 atlasdb          | timestamp       |    13
 atlasdb          | int8            |     9
 atlasdb          | character_data  |     8
 atlasdb          | name            |     8
 atlasdb          | cardinal_number |     7
 atlasdb          | bool            |     7
 atlasdb          | regclass        |     6
 atlasdb          | yes_or_no       |     4
 atlasdb          | xid             |     2
 atlasdb          | cid             |     2
 atlasdb          | rowid           |     1
 atlasdb          | char            |     1
 atlasdb          | tid             |     1
(21 rows)

 current_database |     typname     | count
------------------+-----------------+-------
 test             | text            |   351
 test             | numeric         |   168
 test             | varchar         |   120
 test             | bpchar          |    36
 test             | int4            |    29
 test             | sql_identifier  |    25
 test             | int2            |    15
 test             | oid             |    15
 test             | timestamp       |    13
 test             | int8            |     9
 test             | character_data  |     8
 test             | name            |     8
 test             | bool            |     7
 test             | cardinal_number |     7
 test             | regclass        |     6
 test             | yes_or_no       |     4
 test             | xid             |     2
 test             | cid             |     2
 test             | rowid           |     1
 test             | char            |     1
 test             | tid             |     1
(21 rows)

----->>>---->>>  �û������˶��ٶ���:
 current_database | rolname |  nspname  | relkind | count
------------------+---------+-----------+---------+-------
 atlasdb          | atlasdb | oracle    | v       |    76
 atlasdb          | atlasdb | public    | v       |     1
 atlasdb          | atlasdb | utl_file  | r       |     1
 atlasdb          | atlasdb | dbms_pipe | v       |     1
(4 rows)

 current_database | rolname |  nspname  | relkind | count
------------------+---------+-----------+---------+-------
 test             | atlasdb | oracle    | v       |    76
 test             | atlasdb | dbms_pipe | v       |     1
 test             | atlasdb | utl_file  | r       |     1
 test             | atlasdb | public    | v       |     1
(4 rows)

----->>>---->>>  �û�����ռ�ÿռ����״ͼ:
 current_database | this_buk_no | rels_in_this_buk | buk_min | buk_max
------------------+-------------+------------------+---------+---------
 atlasdb          |           6 |               79 | 0 bytes | 0 bytes
(1 row)

 current_database | this_buk_no | rels_in_this_buk | buk_min | buk_max
------------------+-------------+------------------+---------+---------
 test             |           6 |               79 | 0 bytes | 0 bytes
(1 row)

----->>>---->>>  ��ǰ�û��Ĳ���ϵͳ��ʱ����:
I am root
no crontab for root
����:
    ��ϸ��鶨ʱ����ı�Ҫ��, �Լ���ʱ����ĳɹ��������б�׼, �Լ���ش�ʩ.
    �����������ݿ��OS�û�ִ�б��ű�.


----->>>---->>>  ��ȡrecovery.done md5ֵ:
md5sum: /data/adbdata//recovery.done: No such file or directory
����:
    ����md5ֵһ��(�ж����������ļ��Ƿ�����һ�µ�һ���ֶ�, ����ʹ��diff).


----->>>---->>>  ��ȡrecovery.done����:
grep: /data/adbdata//recovery.done: No such file or directory
����:
    ��primary_conninfo�в�Ҫ��������, ����й¶. ����Ϊ�������û�����replication��ɫ���û�, ��������pg_hba.confֻ������Ҫ����ԴIP����.


/home/atlasdb/scripts/generate_report.sh: line 200: cd: /data/adbdata/: No such file or directory
----->>>---->>>  ��ȡpg_hba.conf md5ֵ:
md5sum: /data/adbdata//pg_hba.conf: No such file or directory
����:
    ����md5ֵһ��(�ж����������ļ��Ƿ�����һ�µ�һ���ֶ�, ����ʹ��diff).


----->>>---->>>  ��ȡpg_hba.conf����:
grep: /data/adbdata//pg_hba.conf: No such file or directory
����:
    �������þ�������һ��, ע��trust��password��֤������Σ��(password���� ��֤ʱ���紫����������, �����Ϊmd5), �������unix socket����ʹ��trust����, ������ʹ��md5����LDAP��֤����.
    ���������ð�����(�����û��������ԴIP, ���Է��ʵ����ݿ�), �����ú�����(���������û���½, reject), �����ð�����(��ͨӦ��), �ο�pg_hba.conf�е�����.


----->>>---->>>  ��ȡpostgresql.conf md5ֵ:
md5sum: /data/adbdata//postgresql.conf: No such file or directory
����:
    ����md5ֵһ��(�ж����������ļ��Ƿ�����һ�µ�һ���ֶ�, ����ʹ��diff).


----->>>---->>>  ��ȡpostgresql.conf����:
grep: /data/adbdata//postgresql.conf: No such file or directory
����:
    �������þ�������һ��, ���ú���Ĳ���ֵ.
    �����޸ĵĲ����б�����  ( �������ϵͳΪ128GB, ���ݿ��ռ����ϵͳ, ���ݿ�汾9.4.x, �����汾�������в�ͬ, δ���ٸ��½��� )  :
echo
listen_addresses = '0.0.0.0'            # ��������IPV4��ַ
port = 1921                             # ������Ĭ�϶˿�
max_connections = 4000                  # �������������
superuser_reserved_connections = 20     # Ϊ�����û�����������
unix_socket_directories = '.'           # unix socket�ļ�Ŀ¼��÷���/data/adbdata/��, ȷ����ȫ
unix_socket_permissions = 0700          # ȷ��Ȩ�ް�ȫ
tcp_keepalives_idle = 30                # ��Ъ�Է���TCP������, ��ֹ���ӱ������豸�ж�.
tcp_keepalives_interval = 10
tcp_keepalives_count = 10
shared_buffers = 16GB                   # ���ݿ��Լ�����Ĺ����С, ����ô�ҳ, ��������Ϊ:  - 100*work_mem - autovacuum_max_workers*(autovacuum_work_mem or autovacuum_work_mem) - max_connections*1MB
huge_pages = try                        # ����ʹ�ô�ҳ, ��Ҫ����ϵͳ֧��, ����vm.nr_hugepages*2MB����shared_buffers.
maintenance_work_mem = 512MB            # ���Լ��ٴ�������, ��������(����û������autovacuum_work_mem)
autovacuum_work_mem = 512MB             # ���Լ��ٻ�������
shared_preload_libraries = 'auth_delay,passwordcheck,pg_stat_statements,auto_explain'           # �����ֹ�����ƽ�, ���븴�Ӷȼ��, ����pg_stat_statements, ����auto_explain, �ο� http://blog.163.com/digoal@126/blog/static/16387704020149852941586
bgwriter_delay = 10ms                   # bgwriter process�����õ���write�ӿ�(ע�ⲻ��fsync)��shared buffer�е�dirty pageд���ļ�ϵͳ.
bgwriter_lru_maxpages = 1000            # һ���������д������ҳ
max_worker_processes = 20               # ���Ҫʹ��worker process, ����������fork ���ٸ�worker����.
wal_level = logical                     # �����������ʹ��logical����, ��������ú�, ����Ҫͣ���ٸ�.
synchronous_commit = off                # ������̵�IOPS����һ��, ����ʹ���첽�ύ���������, �������ݿ�crash�����ϵͳcrashʱ, �����ܶ�ʧ2*wal_writer_delayʱ��β�����������־(��wal buffer��).
wal_sync_method = open_datasync         # ʹ��pg_test_fsync����wal���ڴ��̵�fsync�ӿ�, ʹ�����ܺõ�.
wal_buffers = 16MB
wal_writer_delay = 10ms
checkpoint_segments = 1024              # ����shared_buffers���Ե���wal segment�Ĵ�С.
checkpoint_timeout = 50min
checkpoint_completion_target = 0.8
archive_mode = on                       # ����ȿ���, ������Ҫ�������ݿ����޸�
archive_command = '/bin/date'           # ����ȿ���, ������Ҫ�������ݿ����޸�, �����޸�Ϊ��ȷ����������, test ! -f /home/postgres/archivedir/pg_root/%f && cp %p /home/postgres/archivedir/pg_root/%f
max_wal_senders = 32                    # ���������ٸ�wal sender����.
wal_keep_segments = 2048                # ��pg_xlogĿ¼�б�����WAL�ļ���, ����������ҵ����ӳ������pg_xlogĿ¼��С��Ԥ��.
max_replication_slots = 32              # ���������ٸ����Ʋ��
hot_standby = on
max_standby_archive_delay = 300s        # �������Ҫ������ֻ��, �д�Ĳ�ѯ�������, �������conflicts, ���Կ��ǵ������ֵ������conflict���cancel query.
max_standby_streaming_delay = 300s      # �������Ҫ������ֻ��, �д�Ĳ�ѯ�������, �������conflicts, ���Կ��ǵ������ֵ������conflict���cancel query.
wal_receiver_status_interval = 1s
hot_standby_feedback = off               # ����ر�, ����������long query�����ܵ�������Ƶ����autovacuum(��������޷����ձ���Ҫ������ʱ)
vacuum_defer_cleanup_age = 0             # ��������Ϊ0�������������Ƶ����autovacuum���ù���Ҳ���°汾��Ľ���
random_page_cost = 1.3                    # ����IO��������(��ҵ��SSDΪ�� 1.3�Ǹ�����ֵ)
effective_cache_size = 100GB            # ����Ϊ���ڴ�һ����, ������С(��ȥshared_buffer). ��������OS PAGE CACHE�����õ����ڴ��С.
log_destination = 'csvlog'
logging_collector = on
log_truncate_on_rotation = on
log_rotation_size = 10MB
log_min_duration_statement = 1s
log_checkpoints = on
log_connections = on
log_disconnections = on
log_error_verbosity = verbose           # ����־���������λ��
log_lock_waits = on
log_statement = 'ddl'
autovacuum = on
log_autovacuum_min_duration = 0
autovacuum_max_workers = 10              # ����ʵ��Ƶ�������ɾ����¼�Ķ���������
autovacuum_naptime = 30s                  # ���ٻ���, ��ֹ����
autovacuum_vacuum_scale_factor = 0.1    # ��������������ʱ, �����������չ�������
autovacuum_analyze_scale_factor = 0.2
autovacuum_freeze_max_age = 1600000000
autovacuum_multixact_freeze_max_age = 1600000000
vacuum_freeze_table_age = 1500000000
vacuum_multixact_freeze_table_age = 1500000000
auth_delay.milliseconds = 5000          # ��֤ʧ��, �ӳٶ��ٺ��뷴��
auto_explain.log_min_duration = 5000    # ��¼�������ٺ����SQL��ʱ��ִ�мƻ�
auto_explain.log_analyze = true
auto_explain.log_verbose = true
auto_explain.log_buffers = true
auto_explain.log_nested_statements = true
pg_stat_statements.track_utility=off

    ����Ĳ���ϵͳ����(����ʵ������޸�) :
vi /etc/sysctl.conf
# add by digoal.zhou
fs.aio-max-nr = 1048576
fs.file-max = 76724600
kernel.core_pattern= /data01/corefiles/core_%e_%u_%t_%s.%p
# /data01/corefiles���Ƚ��ã�Ȩ��777
kernel.sem = 4096 2147483647 2147483646 512000
# �ź���, ipcs -l �� -u �鿴��ÿ16������һ�飬ÿ���ź�����Ҫ17���ź�����
kernel.shmall = 107374182
# ���й����ڴ����Ӵ�С����(�����ڴ��80%)
kernel.shmmax = 274877906944
# ��󵥸������ڴ�δ�С(����Ϊ�ڴ�һ��), >9.2�İ汾�Ѵ�����͹����ڴ��ʹ��
kernel.shmmni = 819200
# һ�������ɶ��ٹ����ڴ�Σ�ÿ��PG���ݿ⼯Ⱥ����2�������ڴ��
net.core.netdev_max_backlog = 10000
net.core.rmem_default = 262144
# The default setting of the socket receive buffer in bytes.
net.core.rmem_max = 4194304
# The maximum receive socket buffer size in bytes
net.core.wmem_default = 262144
# The default setting (in bytes) of the socket send buffer.
net.core.wmem_max = 4194304
# The maximum send socket buffer size in bytes.
net.core.somaxconn = 4096
net.ipv4.tcp_max_syn_backlog = 4096
net.ipv4.tcp_keepalive_intvl = 20
net.ipv4.tcp_keepalive_probes = 3
net.ipv4.tcp_keepalive_time = 60
net.ipv4.tcp_mem = 8388608 12582912 16777216
net.ipv4.tcp_fin_timeout = 5
net.ipv4.tcp_synack_retries = 2
net.ipv4.tcp_syncookies = 1
# ����SYN Cookies��������SYN�ȴ��������ʱ������cookie�������ɷ���������SYN����
net.ipv4.tcp_timestamps = 1
# ����time_wait
net.ipv4.tcp_tw_recycle = 0
# ���=1����TCP������TIME-WAIT�׽��ֵĿ��ٻ��գ�����NAT�������ܵ�������ʧ�ܣ��������˹ر���
net.ipv4.tcp_tw_reuse = 1
# �������á�����TIME-WAIT�׽������������µ�TCP����
net.ipv4.tcp_max_tw_buckets = 262144
net.ipv4.tcp_rmem = 8192 87380 16777216
net.ipv4.tcp_wmem = 8192 65536 16777216
net.nf_conntrack_max = 1200000
net.netfilter.nf_conntrack_max = 1200000
vm.dirty_background_bytes = 409600000
#  ϵͳ��ҳ�������ֵ��ϵͳ��̨ˢ��ҳ���Ƚ��� pdflush���������� �Զ���(dirty_expire_centisecs/100����ǰ����ҳˢ������
vm.dirty_expire_centisecs = 3000
#  �����ֵ�ϵ���ҳ������ˢ�����̡�3000��ʾ30�롣
vm.dirty_ratio = 95
#  ���ϵͳ����ˢ��ҳ̫����ʹ��ϵͳ��ҳ�����ڴ� 95 % ʱ�����û����������д���̵Ĳ�������fsync, fdatasync�ȵ��ã�������Ҫ������ϵͳ��ҳˢ����
#  ��Ч��ֹ�û�����ˢ��ҳ���ڵ�����ʵ��������ʹ��CGROUP���Ƶ�ʵ��IOPS������·ǳ���Ч��
vm.dirty_writeback_centisecs = 100
#  pdflush������������̨ˢ��ҳ���̵Ļ��Ѽ���� 100��ʾ1�롣
vm.extra_free_kbytes = 4096000
vm.min_free_kbytes = 2097152
vm.mmap_min_addr = 65536
vm.overcommit_memory = 0
#  �ڷ����ڴ�ʱ����������over malloc, �������Ϊ 1, ����Ϊ�������㹻���ڴ棬�ڴ���ٵĲ��Ի�������ʹ�� 1 .
vm.overcommit_ratio = 90
#  ��overcommit_memory = 2 ʱ�����ڲ����������ָ�ɵ��ڴ��С��
vm.swappiness = 0
#  �رս�������
vm.zone_reclaim_mode = 0
# ���� numa, ������vmlinux�н�ֹ.
net.ipv4.ip_local_port_range = 40000 65535
# �����Զ������TCP, UDP�˿ںŷ�Χ
#  vm.nr_hugepages = 102352
#  ����shared buffer���ó���64GBʱ ʹ�ô�ҳ��ҳ��С /proc/meminfo Hugepagesize

vi /etc/security/limits.conf
* soft    nofile  1024000
* hard    nofile  1024000
* soft    nproc   unlimited
* hard    nproc   unlimited
* soft    core    unlimited
* hard    core    unlimited
* soft    memlock unlimited
* hard    memlock unlimited




----->>>---->>>  �û������ݿ⼶���Ʋ���:
 setdatabase | setrole | setconfig
-------------+---------+-----------
(0 rows)

����:
    ���Ʋ�����Ҫ��ע, ���ȼ��������ݿ�����������������ļ��еĲ���, �ر����Ŵ�ʱ��Ҫ��ע.


|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
|                   ���ݿ������־����                    |
|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|

----->>>---->>>  ��ȡ������־��Ϣ:
cat: postgresql-2021-08-*.log: No such file or directory
����:
    �ο� http://www.postgresql.org/docs/current/static/errcodes-appendix.html .


----->>>---->>>  ��ȡ�����������:
����:
    ��������ǳ���ʱ, �뿼��Ӧ�ò�ʹ�����ӳ�, ����ʹ��pgbouncer���ӳ�.


----->>>---->>>  ��ȡ��֤ʧ�����:
����:
    ��֤ʧ�ܴ����ܶ�ʱ, ���������û��ڱ����ƽ�, ����ʹ��auth_delay�����ֹ�����ƽ�.


|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
|                   ���ݿ���SQL��־����                   |
|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|

----->>>---->>>  ����ѯͳ��:
cat: postgresql-2021-08-*.log: No such file or directory
����:
    �����ʽ(����,����,�û�,���ݿ�,QUERY,��ʱms).
    ����ѯ��ӳִ��ʱ�䳬��log_min_duration_statement��SQL, ���Ը���ʵ������������ݿ��SQL����Ƿ����Ż��ռ�.

----->>>---->>>  ����ѯ�ֲ�ͷ10����ִ��ʱ��, ms:
cat: postgresql-2021-08-*.log: No such file or directory

----->>>---->>>  ����ѯ�ֲ�β10����ִ��ʱ��, ms:
cat: postgresql-2021-08-*.log: No such file or directory


|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
|                   ���ݿ�ռ�ʹ�÷���                    |
|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|

----->>>---->>>  ����ļ�ϵͳʣ��ռ�:
Filesystem     1M-blocks  Used Available Use% Mounted on
devtmpfs            3901     0      3901   0% /dev
tmpfs               3911     1      3911   1% /dev/shm
tmpfs               3911     9      3902   1% /run
tmpfs               3911     0      3911   0% /sys/fs/cgroup
/dev/vda1         100664  4377     91766   5% /
tmpfs                783     0       783   0% /run/user/0
����:
    ע��Ԥ���㹻�Ŀռ�����ݿ�.


----->>>---->>>  �����ռ��ӦĿ¼:
/data/adbdata/
ls: cannot access /data/adbdata//pg_tblspc/: No such file or directory
����:
    ע���ռ��������������, ע���Ƿ������Ϊ, ���������Ӧ����������.


----->>>---->>>  �����ռ�ʹ�����:
  spcname   | pg_tablespace_location | pg_size_pretty
------------+------------------------+----------------
 pg_default |                        | 38 MB
 pg_global  |                        | 598 kB
(2 rows)

����:
    ע�����ռ������ļ�ϵͳ��ʣ��ռ�, (Ĭ�ϱ�ռ���/data/adbdata//baseĿ¼��), IOPS�����Ƿ����, OS��sysstat�����Թ۲�IOʹ����.


----->>>---->>>  ������ݿ�ʹ�����:
  datname  | pg_size_pretty
-----------+----------------
 atlasdb   | 9711 kB
 test      | 9711 kB
 template1 | 9553 kB
 template0 | 9553 kB
(4 rows)

����:
    ע�������ݿ�Ĵ�С, �Ƿ���Ҫ������ʷ����.


----->>>---->>>  TOP 10 size����:
 current_database |  nspname   |    relname     | relkind | pg_size_pretty | seq_scan | seq_tup_read | idx_scan | idx_tup_fetch | n_tup_ins | n_tup_upd | n_tup_del | n_tup_hot_upd | n_live_tup | n_dead_tup
------------------+------------+----------------+---------+----------------+----------+--------------+----------+---------------+-----------+-----------+-----------+---------------+------------+------------
 atlasdb          | pg_catalog | pg_proc        | r       | 824 kB         |        0 |            0 |      419 |           664 |         0 |         0 |         0 |             0 |          0 |          0
 atlasdb          | pg_catalog | pg_depend      | r       | 664 kB         |        6 |        44122 |        0 |             0 |         0 |         0 |         0 |             0 |          0 |          0
 atlasdb          | pg_catalog | pg_attribute   | r       | 536 kB         |       12 |         3682 |     1804 |          4665 |         0 |         0 |         0 |             0 |          0 |          0
 atlasdb          | pg_catalog | pg_description | r       | 304 kB         |        0 |            0 |        1 |             1 |         0 |         0 |         0 |             0 |          0 |          0
 atlasdb          | pg_catalog | pg_collation   | r       | 232 kB         |        0 |            0 |        0 |             0 |         0 |         0 |         0 |             0 |          0 |          0
 atlasdb          | pg_catalog | pg_rewrite     | r       | 144 kB         |        0 |            0 |      105 |           119 |         0 |         0 |         0 |             0 |          0 |          0
 atlasdb          | pg_catalog | pg_operator    | r       | 144 kB         |        0 |            0 |      202 |           751 |         0 |         0 |         0 |             0 |          0 |          0
 atlasdb          | pg_catalog | pg_statistic   | r       | 136 kB         |        0 |            0 |      498 |           234 |         0 |         0 |         0 |             0 |          0 |          0
 atlasdb          | pg_catalog | pg_class       | r       | 128 kB         |     1511 |       510061 |     1741 |          1612 |         0 |         0 |         0 |             0 |          0 |          0
 atlasdb          | pg_catalog | pg_type        | r       | 96 kB          |        2 |          982 |      413 |           385 |         0 |         0 |         0 |             0 |          0 |          0
(10 rows)

 current_database |  nspname   |    relname     | relkind | pg_size_pretty | seq_scan | seq_tup_read | idx_scan | idx_tup_fetch | n_tup_ins | n_tup_upd | n_tup_del | n_tup_hot_upd | n_live_tup | n_dead_tup
------------------+------------+----------------+---------+----------------+----------+--------------+----------+---------------+-----------+-----------+-----------+---------------+------------+------------
 test             | pg_catalog | pg_proc        | r       | 824 kB         |        0 |            0 |      296 |           448 |         0 |         0 |         0 |             0 |          0 |          0
 test             | pg_catalog | pg_depend      | r       | 664 kB         |        3 |        22061 |        0 |             0 |         0 |         0 |         0 |             0 |          0 |          0
 test             | pg_catalog | pg_attribute   | r       | 536 kB         |       12 |         3682 |     1389 |          3946 |         0 |         0 |         0 |             0 |          0 |          0
 test             | pg_catalog | pg_description | r       | 304 kB         |        0 |            0 |        0 |             0 |         0 |         0 |         0 |             0 |          0 |          0
 test             | pg_catalog | pg_collation   | r       | 232 kB         |        0 |            0 |        0 |             0 |         0 |         0 |         0 |             0 |          0 |          0
 test             | pg_catalog | pg_rewrite     | r       | 144 kB         |        0 |            0 |      101 |           112 |         0 |         0 |         0 |             0 |          0 |          0
 test             | pg_catalog | pg_operator    | r       | 144 kB         |        0 |            0 |      120 |           582 |         0 |         0 |         0 |             0 |          0 |          0
 test             | pg_catalog | pg_statistic   | r       | 136 kB         |        0 |            0 |      211 |           113 |         0 |         0 |         0 |             0 |          0 |          0
 test             | pg_catalog | pg_class       | r       | 128 kB         |     1427 |       481522 |     1299 |          1243 |         0 |         0 |         0 |             0 |          0 |          0
 test             | pg_catalog | pg_type        | r       | 96 kB          |        1 |          491 |      326 |           320 |         0 |         0 |         0 |             0 |          0 |          0
(10 rows)

����:
    ����ֵ: ������8GB, �����������ҪƵ������ �� ɾ��+����Ļ�, ����Ա����ҵ���߼����к����ֺ��ø��õ�����, �Լ����ڶ�������������ά��; �����ֻ���ı�, �����ʵ����SQL�������Ż�.


|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
|                     ���ݿ����ӷ���                      |
|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|

----->>>---->>>  ��ǰ��Ծ��:
              now              | state  | count
-------------------------------+--------+-------
 2021-08-29 22:57:24.588677+08 | idle   |     1
 2021-08-29 22:57:24.588677+08 |        |     5
 2021-08-29 22:57:24.588677+08 | active |     3
(3 rows)

����:
    ���active״̬�ܶ�, ˵�����ݿ�ȽϷ�æ. ���idle in transaction�ܶ�, ˵��ҵ���߼���ƿ���������. ���idle�ܶ�, ����ʹ�������ӳ�, ���ҿ���û���Զ��������ӵ����ӳص���С������.


----->>>---->>>  ��ʣ��������:
 max_conn | used | res_for_super | res_for_normal
----------+------+---------------+----------------
     2000 |    9 |             3 |           1988
(1 row)

����:
    �������û�����ͨ�û������㹻������, ���ⲻ�ܵ�¼���ݿ�.


----->>>---->>>  �û�����������:
  rolname   | rolconnlimit | connects
------------+--------------+----------
 atlasdb    |           -1 |        3
 replicator |           -1 |        2
(2 rows)

����:
    ���û������㹻��������, alter role ... CONNECTION LIMIT .


----->>>---->>>  ���ݿ���������:
 datname | datconnlimit | connects
---------+--------------+----------
 atlasdb |           -1 |        2
(1 row)

����:
    �����ݿ������㹻��������, alter database ... CONNECTION LIMIT .


|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
|                     ���ݿ����ܷ���                      |
|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|

----->>>---->>>  TOP 5 SQL : total_cpu_time
ERROR:  relation "pg_stat_statements" does not exist
LINE 1: ...tname,a.total_time/a.calls per_call_time,a.* from pg_stat_st...
                                                             ^
����:
    ���SQL�Ƿ����Ż��ռ�, ���auto_explain�����csvlog�й۲�LONG SQL��ִ�мƻ��Ƿ���ȷ.


----->>>---->>>  ����������4����SIZE����10MB�ı�:
 current_database | nspname | relname | pg_size_pretty | idx_cnt
------------------+---------+---------+----------------+---------
(0 rows)

 current_database | nspname | relname | pg_size_pretty | idx_cnt
------------------+---------+---------+----------------+---------
(0 rows)

����:
    ��������̫��, Ӱ������ɾ������, �������Ƿ��в���Ҫ������.


----->>>---->>>  �ϴ�Ѳ������δʹ�û�ʹ�ý��ٵ�����:
 current_database | schemaname | relname | indexrelname | idx_scan | idx_tup_read | idx_tup_fetch | pg_size_pretty
------------------+------------+---------+--------------+----------+--------------+---------------+----------------
(0 rows)

 current_database | schemaname | relname | indexrelname | idx_scan | idx_tup_read | idx_tup_fetch | pg_size_pretty
------------------+------------+---------+--------------+----------+--------------+---------------+----------------
(0 rows)

����:
    �����Ӧ�ÿ�����Աȷ�Ϻ�, ɾ������Ҫ������.


----->>>---->>>  ���ݿ�ͳ����Ϣ, �ع�����, ���б���, ���ݿ��дʱ��, ����, ���Ƴ�ͻ:
  datname  | rollback_ratio | hit_ratio | blk_read_time | blk_write_time | conflicts | deadlocks
-----------+----------------+-----------+---------------+----------------+-----------+-----------
 atlasdb   | 0.05 %         | 99.00 %   |             0 |              0 |         0 |         0
 test      | 0.00 %         | 98.87 %   |             0 |              0 |         0 |         0
 template1 | 0.00 %         | 0.00 %    |             0 |              0 |         0 |         0
 template0 | 0.00 %         | 0.00 %    |             0 |              0 |         0 |         0
(4 rows)

����:
    �ع�������˵��ҵ���߼�����������, ������С˵��shared_bufferҪ�Ӵ�, ���ݿ��дʱ�䳤˵�����豸��IO����Ҫ����, ����������˵��ҵ���߼�������, ���Ƴ�ͻ������˵�������������LONG SQL.


----->>>---->>>  ����, bgwriter ͳ����Ϣ:
-[ RECORD 1 ]---------+------------------------------
checkpoints_timed     | 74
checkpoints_req       | 3
checkpoint_write_time | 220
checkpoint_sync_time  | 6
buffers_checkpoint    | 6
buffers_clean         | 0
maxwritten_clean      | 0
buffers_backend       | 0
buffers_backend_fsync | 0
buffers_alloc         | 1019
stats_reset           | 2021-08-29 16:39:38.406645+08

����:
    checkpoint_write_time��˵���������ʱ�䳤, ��������в����˽϶����ҳ.
    checkpoint_sync_time������㿪ʼʱ��shared buffer�е���ҳ��ͬ�������̵�ʱ��, ���ʱ�����, �������ݿ��ڼ���ʱ���ܽϲ�, ����һ���������豸��IOPS����.
    buffers_backend_fsync̫��˵����Ҫ�Ӵ�shared buffer ���� ��Сbgwriter_delay����.


|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
|                     ���ݿ���������                      |
|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|

----->>>---->>>  �������ͼ��:
ERROR:  operator is not unique: bigint || text
LINE 6: ...0 bytes$$::text ELSE (bs*(relpages-otta))::bigint || $$ byte...
                                                             ^
HINT:  Could not choose a best candidate operator. You might need to add explicit type casts.
ERROR:  operator is not unique: bigint || text
LINE 6: ...0 bytes$$::text ELSE (bs*(relpages-otta))::bigint || $$ byte...
                                                             ^
HINT:  Could not choose a best candidate operator. You might need to add explicit type casts.
����:
    �����˷ѵ��ֽ���, ���ú��ʵ�autovacuum_vacuum_scale_factor, ������Ƶ�����и��»�ɾ���Ͳ������, �������ý�С��autovacuum_vacuum_scale_factor�������˷ѿռ�.
    ͬʱ����Ҫ��autovacuum, ���ݷ��������ڴ��С, CPU����, �����㹻���autovacuum_work_mem �� autovacuum_max_workers �� maintenance_work_mem, �Լ��㹻С�� autovacuum_naptime .
    ͬʱ����Ҫ�����Ƿ�Դ����ݿ�ʹ�����߼�����pg_dump, ϵͳ���Ƿ񾭳��г�SQL, ������. ��Щ���п��ܵ�������.
    ʹ��pg_reorg����vacuum full���Ի������͵Ŀռ�.
    �ο�: http://blog.163.com/digoal@126/blog/static/1638770402015329115636287/
    otta�������ı�ʵ����Ҫҳ��, iotta������������ʵ����Ҫҳ��;
    bs���ݿ�Ŀ��С;
    tbloat�����ͱ���, ibloat�������ͱ���, wastedpages���˷��˶��ٸ����ݿ�, wastedipages�����˷��˶��ٸ����ݿ�;
    wastedbytes���˷��˶����ֽ�, wastedibytes�����˷��˶����ֽ�;


----->>>---->>>  �������ͼ��:
ERROR:  operator is not unique: bigint || text
LINE 6: ...0 bytes$$::text ELSE (bs*(relpages-otta))::bigint || $$ byte...
                                                             ^
HINT:  Could not choose a best candidate operator. You might need to add explicit type casts.
ERROR:  operator is not unique: bigint || text
LINE 6: ...0 bytes$$::text ELSE (bs*(relpages-otta))::bigint || $$ byte...
                                                             ^
HINT:  Could not choose a best candidate operator. You might need to add explicit type casts.
����:
    �����������̫��, ��Ӱ������, �����ؽ�����, create index CONCURRENTLY ... .


----->>>---->>>  ��������:
 current_database | schemaname | relname | n_dead_tup
------------------+------------+---------+------------
(0 rows)

 current_database | schemaname | relname | n_dead_tup
------------------+------------+---------+------------
(0 rows)

����:
    ͨ����������, ��������Ϊ�޷���������, ���߻��������Ľ��̷�æ��û�м�ʱ����, ����û�п���autovacuum, ���ڶ�ʱ���ڲ����˴��������� .
    ���Եȴ�autovacuum���д���, �����ֹ�ִ��vacuum table .


|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
|                     ���ݿ��������                      |
|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|

----->>>---->>>  ���ݿ�����:
  datname  | age | age_remain
-----------+-----+------------
 atlasdb   |  10 | 2147483638
 test      |  10 | 2147483638
 template1 |  10 | 2147483638
 template0 |  10 | 2147483638
(4 rows)

����:
    ���ݿ���������������Ӧ��С��vacuum_freeze_table_age, ���ʣ������С��5��, ������Ϊ��Ԥ, ��LONG SQL������ɱ����, ִ��vacuum freeze .


----->>>---->>>  ������:
 current_database | rolname |  nspname   | relkind |    relname    | age | age_remain
------------------+---------+------------+---------+---------------+-----+------------
 atlasdb          | atlasdb | pg_toast   | t       | pg_toast_2604 |  10 | 2147483638
 atlasdb          | atlasdb | pg_toast   | t       | pg_toast_2606 |  10 | 2147483638
 atlasdb          | atlasdb | pg_toast   | t       | pg_toast_2609 |  10 | 2147483638
 atlasdb          | atlasdb | pg_toast   | t       | pg_toast_1255 |  10 | 2147483638
 atlasdb          | atlasdb | pg_catalog | r       | pg_statistic  |  10 | 2147483638
(5 rows)

 current_database | rolname |  nspname   | relkind |    relname    | age | age_remain
------------------+---------+------------+---------+---------------+-----+------------
 test             | atlasdb | pg_toast   | t       | pg_toast_2604 |  10 | 2147483638
 test             | atlasdb | pg_toast   | t       | pg_toast_2606 |  10 | 2147483638
 test             | atlasdb | pg_toast   | t       | pg_toast_2609 |  10 | 2147483638
 test             | atlasdb | pg_toast   | t       | pg_toast_1255 |  10 | 2147483638
 test             | atlasdb | pg_catalog | r       | pg_statistic  |  10 | 2147483638
(5 rows)

����:
    ����������������Ӧ��С��vacuum_freeze_table_age, ���ʣ������С��5��, ������Ϊ��Ԥ, ��LONG SQL������ɱ����, ִ��vacuum freeze .


----->>>---->>>  ������, 2PC:
(0 rows)

(0 rows)

����:
    ����������в���������, �޷�����, ���鲻Ҫ�����ݿ�������LONG SQL, ���ߴ�DML�߷�ʱ��ȥ����LONG SQL. 2PC����һ��Ҫ�ǵþ��������, ������ܻᵼ�����ݿ�����.
    �ο�: http://blog.163.com/digoal@126/blog/static/1638770402015329115636287/


|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
|               ���ݿ�XLOG, ������״̬����                |
|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|

----->>>---->>>  �Ƿ����鵵, �Զ���������:
      name       |                  setting
-----------------+--------------------------------------------
 archive_command | scp %p 192.168.0.170:/data/archive_wals/%f
 archive_mode    | on
 autovacuum      | on
(3 rows)

����:
    ���鿪���Զ���������, �����鵵.


----->>>---->>>  �鵵ͳ����Ϣ:
         now_xlog         | archived_count |    last_archived_wal     |      last_archived_time       | failed_count | last_failed_wal | last_failed_time |          stats_reset
--------------------------+----------------+--------------------------+-------------------------------+--------------+-----------------+------------------+-------------------------------
 00000004000000000000000D |              3 | 00000004000000000000000D | 2021-08-29 17:11:11.677791+08 |            0 |                 |                  | 2021-08-29 16:39:38.406645+08
(1 row)

����:
    �����ǰ��XLOG�ļ������һ���鵵ʧ�ܵ�XLOG�ļ�֮�����ܶ���ļ�, ���龡���Ų�鵵ʧ�ܵ�ԭ��, �Ա��޸�, ����pg_xlogĿ¼���ܻ�ű�.


----->>>---->>>  ������ͳ����Ϣ:
-[ RECORD 1 ]----+------------------------------
pg_wal_lsn_diff  | 0
pid              | 17942
usesysid         | 16384
usename          | replicator
application_name | db02
client_addr      | 192.168.0.62
client_hostname  |
client_port      | 33876
backend_start    | 2021-08-29 16:41:14.16775+08
backend_xmin     |
state            | streaming
sent_lsn         | 0/E000000
write_lsn        | 0/E000000
flush_lsn        | 0/E000000
replay_lsn       | 0/E000000
write_lag        |
flush_lag        |
replay_lag       |
sync_priority    | 1
sync_state       | sync
-[ RECORD 2 ]----+------------------------------
pg_wal_lsn_diff  | 0
pid              | 17943
usesysid         | 16384
usename          | replicator
application_name | db01
client_addr      | 192.168.0.170
client_hostname  |
client_port      | 50906
backend_start    | 2021-08-29 16:41:14.294612+08
backend_xmin     |
state            | streaming
sent_lsn         | 0/E000000
write_lsn        | 0/E000000
flush_lsn        | 0/E000000
replay_lsn       | 0/E000000
write_lag        |
flush_lag        |
replay_lag       |
sync_priority    | 0
sync_state       | async

����:
    ��ע�����Ƶ��ӳ�, ����ӳٷǳ���, �����Ų��������, �Լ����ض�xlog������, Զ��дxlog������.


----->>>---->>>  �����Ʋ��:
 pg_wal_lsn_diff | slot_name | plugin | slot_type | datoid | database | temporary | active | active_pid | xmin | catalog_xmin | restart_lsn | confirmed_flush_lsn
-----------------+-----------+--------+-----------+--------+----------+-----------+--------+------------+------+--------------+-------------+---------------------
               0 | db02      |        | physical  |        |          | f         | t      |      17942 |      |              | 0/E000000   |
               0 | db01      |        | physical  |        |          | f         | t      |      17943 |      |              | 0/E000000   |
(2 rows)

����:
    ���restart_lsn�͵�ǰXLOG���ǳ�����ֽ���, ��Ҫ�Ų�slot�Ķ������Ƿ�����������XLOG, ���߶������Ƿ�����. ��ʱ�䲻��slot������ȡ��, pg_xlogĿ¼���ܻ�ű�.


|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
|                ���ݿⰲȫ��Ǳ�ڷ��շ���                 |
|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|

----->>>---->>>  ����й¶���:
    ��� ~/.psql_history :
grep: /root/.psql_history: No such file or directory

    ��� *.csv :
cat: postgresql-2021-08-1*.log: No such file or directory

    ��� /data/adbdata//recovery.* :
grep: ../recovery.*: No such file or directory

    ��� pg_stat_statements :
ERROR:  relation "pg_stat_statements" does not exist
LINE 1: select query from pg_stat_statements where (query ~* $$group...
                          ^
    ��� pg_authid :
 rolname | rolsuper | rolinherit | rolcreaterole | rolcreatedb | rolcanlogin | rolreplication | rolbypassrls | rolconnlimit | rolpassword | rolvaliduntil
---------+----------+------------+---------------+-------------+-------------+----------------+--------------+--------------+-------------+---------------
(0 rows)

    ��� pg_user_mappings, pg_views :
 current_database | umid | srvid | srvname | umuser | usename | umoptions
------------------+------+-------+---------+--------+---------+-----------
(0 rows)

 current_database | schemaname | viewname | viewowner | definition
------------------+------------+----------+-----------+------------
(0 rows)

 current_database | umid | srvid | srvname | umuser | usename | umoptions
------------------+------+-------+---------+--------+---------+-----------
(0 rows)

 current_database | schemaname | viewname | viewowner | definition
------------------+------------+----------+-----------+------------
(0 rows)

����:
    ������������ʾ������й¶, �����޸�, ��ͨ���������������ֱ���¼�������ļ���(psql -n) (set log_statement='none'; set log_min_duration_statement=-1; set log_duration=off; set pg_stat_statements.track_utility=off;) .
    �������벻��ȫ, ����ʹ��create|alter role ... encrypted password.
    ��fdw, dblink based view�в�����ʹ����������.
    ��recovery.*�������в�Ҫʹ������, ����ȫ, ����ʹ��.pgpass�������� .


----->>>---->>>  ��������:
    1. ������������Ƿ��, ��crackdb����ȡ�����ֵ�, ������� :
    ��� md5(''||'')�Ƿ���pg_authid.rolpasswordƥ�� :
    ƥ����˵���û�ʹ���˼����� :

    2. ��ǰ���ο� http://blog.163.com/digoal@126/blog/static/16387704020149852941586


----->>>---->>>  �û����뵽��ʱ��:
          rolname          | rolvaliduntil
---------------------------+---------------
 pg_monitor                |
 pg_read_all_settings      |
 pg_read_all_stats         |
 pg_stat_scan_tables       |
 pg_read_server_files      |
 pg_write_server_files     |
 pg_execute_server_program |
 pg_signal_backend         |
 atlasdb                   |
 replicator                |
(10 rows)

����:
    ���ں�, �û����޷���½, �ǵ��޸�����, ͬʱ�����뵽��ʱ���ӳ���ĳ��ʱ�������ʱ��, alter role ... VALID UNTIL 'timestamp' .


----->>>---->>>  ��ͨ�û������ϵĹ���ȫ���:
 current_database | schemaname | tablename | rulename | definition
------------------+------------+-----------+----------+------------
(0 rows)

 current_database | schemaname | tablename | rulename | definition
------------------+------------+-----------+----------+------------
(0 rows)

����:
    ��ֹ��ͨ�û��ڹ�����������, ע����Σ�յ�security invoker�ĺ�������, �����û�������Ϊ���򴥷����������ЩΣ�պ���(��invoker��ɫ).
    �ο� http://blog.163.com/digoal@126/blog/static/16387704020155131217736/


----->>>---->>>  ��ͨ�û��Զ��庯����ȫ���:
 current_database | rolname | nspname | proname
------------------+---------+---------+---------
(0 rows)

 current_database | rolname | nspname | proname
------------------+---------+---------+---------
(0 rows)

����:
    ��ֹ��ͨ�û��ں�����������, ע����Σ�յ�security invoker�ĺ�������, �����û�������Ϊ�������������������ЩΣ�պ���(��invoker��ɫ).
    �ο� http://blog.163.com/digoal@126/blog/static/16387704020155131217736/


----->>>---->>>  unlogged table �� ��ϣ����:
 current_database | rolname | nspname | relname
------------------+---------+---------+---------
(0 rows)

 current_database | pg_get_indexdef
------------------+-----------------
(0 rows)

 current_database | rolname | nspname | relname
------------------+---------+---------+---------
(0 rows)

 current_database | pg_get_indexdef
------------------+-----------------
(0 rows)

����:
    unlogged table��hash index����¼XLOG, �޷�ʹ�������ƻ���log shipping�ķ�ʽ���Ƶ�standby�ڵ�, �����standby�ڵ�ִ��ĳЩSQL, ���ܵ��±����鲻������.
    �����ݿ�CRASH���޷��޸�unlogged table��hash index, ������ʹ��.
    PITR��unlogged table��hash indexҲ��������.


----->>>---->>>  ������, �¼�������:
 current_database | relname | tgname | proname | tgenabled
------------------+---------+--------+---------+-----------
(0 rows)

 current_database | rolname | proname | evtname | evtevent | evtenabled | evttags
------------------+---------+---------+---------+----------+------------+---------
(0 rows)

 current_database | relname | tgname | proname | tgenabled
------------------+---------+--------+---------+-----------
(0 rows)

 current_database | rolname | proname | evtname | evtevent | evtenabled | evttags
------------------+---------+---------+---------+----------+------------+---------
(0 rows)

����:
    �����Աע�ⴥ�������¼��������ı�Ҫ��.


----->>>---->>>  ����Ƿ�ʹ����a-z 0-9 _ �������ĸ��Ϊ������:
 datname
---------
(0 rows)

 current_database | relname | relkind
------------------+---------+---------
(0 rows)

 current_database | typname
------------------+---------
(0 rows)

 current_database | proname
------------------+---------
(0 rows)

 current_database | nspname | relname | attname
------------------+---------+---------+---------
(0 rows)

 current_database | relname | relkind
------------------+---------+---------
(0 rows)

 current_database | typname
------------------+---------
(0 rows)

 current_database | proname
------------------+---------
(0 rows)

 current_database | nspname | relname | attname
------------------+---------+---------+---------
(0 rows)

����:
    �����κ�identify��ֻʹ�� a-z, 0-9, _ (�������, ����, ��ͼ��, ������, ������, ���ݿ���, schema��, �ﻯ��ͼ���ȵ�).
    identify �÷� https://yq.aliyun.com/articles/52883 .
    https://www.postgresql.org/docs/9.5/static/sql-keywords-appendix.html .
    https://www.postgresql.org/docs/9.5/static/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIERS .


----->>>---->>>  ���ȴ�:
(0 rows)

����:
    ���ȴ�״̬, ��ӳҵ���߼����������SQL����������, ���������Ų������SQL.


----->>>---->>>  �̳й�ϵ���:
 inhrelid | inhparent | inhseqno
----------+-----------+----------
(0 rows)

 inhrelid | inhparent | inhseqno
----------+-----------+----------
(0 rows)

����:
    ���ʹ�ü̳���ʵ�ַ�����, ע�������Ĵ��������߼��Ƿ�����, ����ʱ��ģʽ�ķ������Ƿ���Ҫ��ʱ�ӷ���, �޸Ĵ��������� .
    ����̳б��Ȩ��ͳһ, ���Ȩ�޲�һ��, ���ܵ���ĳЩ�û���ѯʱȨ�޲���.


----->>>---->>>  ����ͳ����Ϣ:
 pg_stat_reset
---------------

(1 row)

 pg_stat_reset
---------------

(1 row)

 pg_stat_reset_shared
----------------------

(1 row)

 pg_stat_reset_shared
----------------------

(1 row)

----->>>---->>>  ����pg_stat_statementsͳ����Ϣ:
ERROR:  function pg_stat_statements_reset() does not exist
LINE 1: select pg_stat_statements_reset()
               ^
HINT:  No function matches the given name and argument types. You might need to add explicit type casts.
|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|
|                        ������Ϣ                         |
|+++++++++++++++++++++++++++++++++++++++++++++++++++++++++|

----->>>---->>>  ����1 : 2021-08-28 ����ϵͳsysstat�ռ���ͳ����Ϣ
/home/atlasdb/scripts/generate_report.sh: line 1035: sar: command not found


----->>>---->>>  ��������:
    ���������Ѳ����:
        HA ״̬�Ƿ�����, ������HA����, �����������ӳ�.
        sar io, load, ......
    Ѳ�������, ����csv��־
/home/atlasdb/scripts/generate_report.sh: line 1055: return: can only `return' from a function or sourced script