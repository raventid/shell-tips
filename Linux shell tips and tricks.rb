1. Find process by name, catch it's pid, show the command to execute ( add   '| sh' to the end of command to execute this)
	ps axf | grep <process name> | grep -v grep | awk '{print "kill -9 " $1}'

2. Show and update info about CPU temperature
	watch -n 1 -d sensors
   this one could be used with with more advanced technics

3. How to really clear terminal screen?
    printf "\033c"

4. Close frozen SSH session:
    I found a similar solution for ssh: [enter]~. First press the Enter key, then tilde, and then add a dot and your ssh session will be closed and you can continue your work in back in freed terminal.


5. Open the remote file in the local vim session:
    :e scp://user@host/relative/path/from/home.txt
   To save this content at your local computer just :w /path/to/this/file.txt


