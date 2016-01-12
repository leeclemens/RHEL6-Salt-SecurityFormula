# Rule Title:  The FTPS/FTP service on the system must be configured with the Department of Defense (DoD) login banner.
# STIG ID: RHEL-06-000348  Rule ID: SV-50400r2_rule  Vuln ID: V-38599
# Severity: CAT II Class: Unclass

RHEL-06-000348:
  file.replace:
    - name: /etc/vsftpd/vsftpd.conf
    - pattern: ^banner_file.*
    - repl: "banner_file=/etc/issue"
    - append_if_not_found: True
