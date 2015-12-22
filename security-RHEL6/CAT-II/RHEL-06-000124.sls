#Rule Title:  The Datagram Congestion Control Protocol (DCCP) must be disabled unless required.
#STIG ID: RHEL-06-000124  Rule ID: SV-50315r3_rule  Vuln ID: V-38514
#Severity: CAT II Class: Unclass

RHEL-06-000124:
  file.append:
    - name: "/etc/modprobe.d/RHEL-06-000124"
    - text: "install dccp /bin/true"
