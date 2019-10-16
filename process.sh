ps

ps -e

ps -ef

# This gives 17 columns of information
ps -elF

# Notice no-spaces between parameters
ps -e --format uid, pid,ppid,%cpu,cmd --sort %cpu

# Specify processes run by a specific user
ps -U root

# Calculate total memory usage for a particular user
ps -U sysadmin --format %mem | awk '{memory +=$1};END {print memory}'

# Look for specific programs
ps -C firefox

ps -C firefox --format pid,uid,%cpu,cmd --sort %cpu
ps -C code --format pid,uid,%cpu,cmd --sort %cpu
ps -C chrome --format pid,uid,%cpu,cmd --sort %cpu

ps -e --format uid,pid,tty,%cpu,cmd --sort %cpu

ps -e --format uid,pid,tty,rss,cmd --sort rss

# Display real-time data on all running processes
top
# Press 'l' to show/hide load average time
# Press '1' to show/hide all running cpu core usage
# Press 't' to toggle between tabs and cpu state
# Press 'm' to toggle between different memory states
# Press 'f' to configure fields/columns to display
# Press 'c' to toggle between command name and command line
# Press 'u', then type username for which you want to view all processes (Blank is for all users)
# Press 'k' to manually kill a process with pid
# Anything that's not viewable on the screen can be scrolled up/down or page up/page down
# Sory by process usage, Shift+p (uppercase P)
# Sory by memory usage, Shift+m (uppercase M)
# Sory by time the process has been running, Shift+t (uppercase T)
# Sory by Process ID Number, Shift+n (uppercase N)

# Find all process IDs of a specific process
pidof code
pgrep code

# List all signals available that you can send to a process
kill -l
# This will list all 64 signals (SIGTERM, SIGKILL, SIGINT, SIGHUP, ...)

pidof firefox (return 4631, hypothetically)
kill 4631
pidof firefox (returns nothing)

# Terminal 1:
dd if=/dev/zero of=/dev/null
# Terminal 2:
pidof dd (return 4000)
kill -USR1 4000
# Command concatenate variation
kill -USR1 $(pidof dd)

# Finally terminate the process
kill $(pidof dd)

# Kill all processes, notice sudo because crond is a system service
sudo killall crond
# Default signal for killall is SIGTERM (kill -l -> 15) SIGTERM). Below combination of commands will show that
# kill -l | grep '15)' | awk '{print $9, $10}'

# Kill all processes run by a user
sudo killall -u sysadmin

