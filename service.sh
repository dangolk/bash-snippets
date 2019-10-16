# List all enabled system unit files 
systemctl list-unit-files -a service
# will show 2 columns (service name, service state)

# List all enabled and disabled system unit files 
systemctl list-unit-files -at service

# List all enabled and non-running system services
systemctl list-units -at service

# Show list of running services
systemctl list-units -t service --state running

# Show more info about a particular system service, including service dependencies
systemctl cat rsyslog
systemctl cat apache2

# Get service status
systemctl status apache2

# Check to see if service is active or not
systemctl is-active apache2