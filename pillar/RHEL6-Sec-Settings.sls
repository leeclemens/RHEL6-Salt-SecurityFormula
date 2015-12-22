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

# RHEL-06-000311: auditd.conf space_left. Adjust based on the size of your /var/log/audit partition. number below is arbitrary
RHEL-06-000311: 300

# For RHEL-06-000248, NTPD configuration, append all your ntp servers to this line in the format you want them to take
ntpservers:
  "server ntp1.metashell.net"
  "server ntp2.metashell.net"

# RHEL-06-000253, Cacert configuration for ldapconf. The location of your ca cert should be here
cacert: "tls_cacertdir /etc/pki/tls/CA"

# Referenced in RHEL-06-000383
auditlogs = "/var/log/audit/"

# RHEL-06-000510 - auditd.conf disk_full_action. Acceptable settings are: syslog, exec, single, or halt
RHEL-06-000510: halt
# RHEL-06-000511 - auditd.conf disk_error_action. Acceptable settings are: syslog, exec, single, or halt
RHEL-06-000511: halt
