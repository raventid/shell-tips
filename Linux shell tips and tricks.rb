1. Find process by name, catch it's pid, show the command to execute ( add   '| sh' to the end of command to execute this)
	[julian@ubuntu ~]$ ps axf | grep <process name> | grep -v grep | awk '{print "kill -9 " $1}'

2. Show and update info about CPU temperature
	[julian@ubuntu ~]$ watch -n 1 -d sensors
   this one could be used with more advanced technics

3. How to really clear terminal screen?
    [julian@ubuntu ~]$ printf "\033c"
   You can make an alias for this command (stackoverflow - http://stackoverflow.com/questions/5367068/clear-the-ubuntu-bash-screen-for-real)

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
   
10. ag - great tool like grep. Repo to download

11. vim-rails plugin for vim is awesome (Emodel, Econtroller and bunch of usefull commands)

12. you have a few options when merging git branches, making not fast-forward merge is interesting option

13. [julian@ubuntu ~]$ sudo apt-get install mtr
    this is a great utility with ping and trace functionaly and even GUI!
    
14. If you login to your ubuntu and all you see is cursor and background, you can try to empty your trash 
    [julian@ubuntu ~]$ sudo rm -rf ~/.local/share/Trash/*
    I've spend one day reading logs before I was able to figure out the problem (if not this, check .Xauthority, lightdm logs, x-server)

15. Run gvim or vim from your project folder it'll help vim.rails to work correctly

16. Using '&&' in shell while writing commands let me get the job done faster

17. Save vim file with sudo. You started to edit some config file with vim and found out that it is sudo's file, you 
can check out this trick - {{{{{{{   :w !sudo tee %   }}}}}}}
Additional info may be found here - 
http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work

18. This is how to setup ssh account to your server -> 
[julian@ubuntu ~]$ cat ~/.ssh/id_rsa.pub | ssh {user}@{ip_address} 'cat >> /home/{user}/.ssh/authorized_keys'

19. [julian@ubuntu ~]$ sudo apt-get checkinstall
 This program allows you to create .deb packages for ubuntu (or debian, or even .rpm packages) and install them
  --install, install created package right now.
  --pkgname, name of package
  --pkgversion, version of package
  with name and version your package gonna be notable in dpkg
  --nodoc, do you really need documentation?
  there is a few more options, read man
  
20. Fixing harddrive with unix command line:
     It might be as simple as just resize filesystem. Just be attentive at analizing fsck, mount and other utilities output.

       http://serverfault.com/questions/493091/how-to-recover-data-from-a-corrupted-ext3-partition
       http://www.linuxquestions.org/questions/linux-hardware-18/size-in-superblock-is-different-from-the-physical-size-of-the-partition-298175/

21. pv - utility for creating progress bar anywhere you want.

22. [julian@ubuntu ~]$ sudo apt-get install isc-dhcp-server
    [julian@ubuntu ~]$ sudo vim /etc/default/isc-dhcp-server //change INTERFACES=”” to eth0 or eth1
    [julian@ubuntu ~]$ sudo vim /etc/dhcp/dhcpd.conf 
    //You can comment 2
	default-lease-time 600; 
	max-lease-time 7200;
   //And add
    subnet 192.168.0.0 netmask 255.255.255.0 {
	range 192.168.0.10 192.168.0.254; //range of address to give
	option domain-name-servers 192.168.0.1; // your dns server
	option domain-name "lab.loc"; // your domain name
	option routers 192.168.0.1; // router address
	option broadcast-address 192.168.0.255; // this is ok, leave it
    default-lease-time 604800; max-lease-time 604800; }
    
23. [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
    I usually add this to my bash_profile
    
24. In Ruby super is a special case where parenthesis do matter...

Calling super without parameter (nor parenthesis) in a method of a subclass calls the same method in the super-class
(or its ancestors if the superclass does not define it) with all the parameter passed to the subclass method.

Calling super() calls the superclass (or ancestors) method without any parameter (assuming this method accept no parameters...)

Calling super(...) with any combination of parameters calls the superclass method, passing it the paramaters

25. Nice command to remove all deleted files from SVN. (it is like git rm --cached)
    [julian@ubuntu ~]$ for i in  $(svn st | grep \! | awk '{print $2}'); do svn delete $i; done
    
26. dmidecode is a super usefull linux utility for getting your motheboard, bios and other stuff information. Helped me a lot!

27. Wanna see your repository info in browser? Let git surprise you 
    [julian@ubuntu ~]$ git instaweb --httpd=webrick
