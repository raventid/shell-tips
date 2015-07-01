1. Find process by name, catch it's pid, show the command to execute ( add   '| sh' to the end of command to execute this)
	[julian@ubuntu ~]$ ps axf | grep <process name> | grep -v grep | awk '{print "kill -9 " $1}'

2. Show and update info about CPU temperature
	[julian@ubuntu ~]$ watch -n 1 -d sensors
   this one could be used with with more advanced technics

3. How to really clear terminal screen?
    [julian@ubuntu ~]$ printf "\033c"
   You can make an alias for this command

4. Close frozen SSH session:
    I found a similar solution for ssh: [enter]~. First press the Enter key, then tilde, and then add a dot and your ssh session will be closed and you can continue your work in back in freed terminal.


5. Open the remote file in the local vim session:
    :e scp://user@host/relative/path/from/home.txt
   To save this content at your local computer just :w /path/to/this/file.txt

6. If any part of your network along the way is saturated, or if any link within the network is throwing errors,
you can experience packet loss. This won't show up in the interface error counts unless you happen to be having the
problem right at the switch-to-server cable connection. If the problem is anywhere else in the network, it shows up 
as lost packets.

You can surface this problem if you've got TCP traffic, since there are counters in the kernel that keep track of
TCP taking recovery steps to account for lost packets in the stream. Have a look at the -s (stats) option on netstat.
The presented values are counters, so you'll need to watch them for a while to get a feel for what's normal and what's
anomalous, but the data is there. The retransmit and data loss counters are particularly useful.
   [julian@ubuntu ~]$ netstat -s | egrep -i 'loss|retran'
   
7. For a specific file use:
     git checkout path/to/file/to/revert
For all unstaged files use:
     git checkout -- .
Make sure to include the period at the end. If you have added some files they will stay untouched.

8. List all directoies with ls
    [julian@ubuntu ~]$ ls -d */
    
9. Count all files in directory
   find . -type f | wc -l

