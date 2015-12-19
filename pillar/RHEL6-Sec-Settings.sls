# home Directorsy
home: /home
roothome: /root

# Default: 1, disabled IPv6 support in kernel, this is the proper setting. Only change to 0 if you use ipv6 
# Which is a finding under RHEL-06-000098
disableipv6: 1

# The following should be a list of logfiles listed in /etc/rsyslog. They should be owned by root:
  #

rsyslogfiles:
  "/var/log/messages"
  "/var/log/secure"
  "/var/log/maillog"
  "/var/log/cron"
  "/var/log/spooler"
  "/var/log/boot.log"


# RHEL-06-000159: Auditd Log retention, 5+ is the recomended value,
RHEL-06-000159: 5
# RHEL-06-000160: Auditd max_log_file, 6+ is the recomended value,
RHEL-06-000160: 6
# RHEL-06-000161: Auditd max_log_file_action, rotate is the default/correct value
RHEL-06-000161: rotate
# RHEL-06-000163: The audit system must switch the system to single user mode when available audit storage volumn becomes dangerously low
# default/correct value: single
RHEL-06-000163: single
