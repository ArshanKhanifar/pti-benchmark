NOTE: These numbers are comparing the performance before merging the
Meltdown patch, and after the merge without having the feature enabled.
Namely, `sysctl vm.pmap.pti=0`.

SUMMARY: Merging the Meltdown patch didn't have significant changes in 
any of the microbenchmarks.

#access:
difference(ns): -17.7 +/- 0.564627
-0.865356% +/- 0.0274432%
bad_open
3.5 +/- 0.350167
0.856793% +/- 0.0864546%
chroot
12.7 +/- 0.350167
2.2041% +/- 0.0616323%
clock_gettime
No difference at 95.0% confidence
create_unlink
-280.3 +/- 29.4027
-2.04842% +/- 0.211002%
dup
3 +/- 0
0.583658% +/- 0%
fork
	-1958.9 +/- 507.974
	-1.81164% +/- 0.46416%
fork_exec
	-6876.3 +/- 656.394
	-1.38028% +/- 0.130845%
fstat_shmfd
	1 +/- 0
	0.3367% +/- 0%
getppid
	-7.9 +/- 0.2101
	-4.78788% +/- 0.127333%
getpriority
	8 +/- 0
	5.40541% +/- 0%
getresuid
	2 +/- 0
	0.858369% +/- 0%
gettimeofday
	No difference at 95.0% confidence
getuid
	-6.3 +/- 0.320933
	-4.30622% +/- 0.20992%
open_close
	-24.2 +/- 2.0728
	-0.925076% +/- 0.0789851%
open_read_close_1
	-108.9 +/- 11.2553
	-2.61943% +/- 0.264002%
open_read_close_10
	-78.2 +/- 4.55271
	-1.90143% +/- 0.108637%
open_read_close_100
	-90.7 +/- 5.47202
	-2.18718% +/- 0.129696%
open_read_close_1000
	-84.3 +/- 4.79358
	-2.00853% +/- 0.112803%
open_read_close_10000
	-62.7 +/- 3.45443
	-1.31045% +/- 0.0714985%
open_read_close_100000
	12.5 +/- 9.18826
	0.105118% +/- 0.0773059%
open_read_close_1000000
	-60.6 +/- 37.9923
	-0.0594304% +/- 0.0372573%
pipe
	-26.3 +/- 2.12537
	-1.38058% +/- 0.111435%
read_1
	1.8 +/- 0.610536
	0.231601% +/- 0.0785942%
read_10
	9.6 +/- 0.560267
	1.23711% +/- 0.0721993%
read_100
	-11.4 +/- 0.343092
	-1.44049% +/- 0.042728%
read_1000
	-11 +/- 0
	-1.3269% +/- 0%
read_10000
	-3.2 +/- 0.846216
	-0.261288% +/- 0.0690698%
read_100000
	No difference at 95.0% confidence
read_1000000
	167.1 +/- 12.3563
	0.173065% +/- 0.0128109%
select
	-2.5 +/- 0.425996
	-0.682501% +/- 0.115847%
setuid
	1 +/- 0
	0.159744% +/- 0%
shmfd
	19.6 +/- 0.641866
	1.56675% +/- 0.0513082%
socket_local_dgram
	-9.8 +/- 0.383588
	-0.762587% +/- 0.0297808%
socket_local_stream
	-17.6 +/- 0.641866
	-1.36328% +/- 0.0497185%
socket_tcp
	-45.6 +/- 1.23306
	-2.21909% +/- 0.0589389%
socket_udp
	-5.1 +/- 0.795426
	-0.338645% +/- 0.0526785%
socketpair_dgram
	-28.1 +/- 0.469798
	-0.936854% +/- 0.015585%
socketpair_stream
	32.3 +/- 0.546978
	1.0747% +/- 0.0183437%
vfork
	-468.9 +/- 186.575
	-0.930485% +/- 0.369532%
vfork_exec
	4273.2 +/- 461.793
	0.920184% +/- 0.0999039%
