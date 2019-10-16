# Install the 'at' package
sudo apt install at
# Run jobs 'at' a specified time

sudo systemctl start atd

# Make sure this service runs at startup
sudo systemctl enable atd

at now +5min
at> cp ./data.txt ../
at> rsync -a ./data.txt ../
at> [CTRL+D to save it]
# will show message that job[jobID:2] will start in T-minus 5mins

# To verify our job
atq

# View the 'at' file itself
at -c 2
# number '2' is jobID
# this will show contents of the 'at' job including the shell environment

# To cancel an 'at' job
atrm 2
# 'number' 2 is jobID
atq 
# will return nothing

# Run batch jobs, instead of at jobs
batch
at> touch ./batchfile.txt
at> [CTRL+D]
# will show message that job[jobID:4] has been created
# If the system is busy, the batch job won't run. If the system load average drops below 0.8, the batch file will run
atq
# if this returns nothing, the batch job ran successfully