# Rule Title:  A file integrity tool must be used at least weekly to check for unauthorized file changes, particularly the addition of unauthorized system libra    ries or binaries, or for unauthorized modification to authorized system libraries or binaries
# STIG ID: RHEL-06-000302  Rule ID: SV-50496r2_rule  Vuln ID: V-38695
# Severity: CAT II Class: Unclass
  
# Rule Title:  The operating system must employ automated mechanisms, per organization defined frequency, to detect the addition of unauthorized components/devices into the operating system.
#STIG ID: RHEL-06-000303  Rule ID: SV-50497r2_rule  Vuln ID: V-38696
#Severity: CAT II Class: Unclass

# Rule Title:  The operating system must employ automated mechanisms to detect the presence of unauthorized software on organizational information systems and notify designated organizational officials in accordance with the organization defined frequency.
# STIG ID: RHEL-06-000304  Rule ID: SV-50499r2_rule  Vuln ID: V-38698
# Severity: CAT II Class: Unclass

# Rule Title:  The operating system must detect unauthorized changes to software and information. 
# STIG ID: RHEL-06-000306  Rule ID: SV-50471r2_rule  Vuln ID: V-38670
# Severity: CAT II Class: Unclass

# Rule Title:  The operating system must ensure unauthorized, security-relevant configuration changes detected are tracked.
# STIG ID: RHEL-06-000307  Rule ID: SV-50474r2_rule  Vuln ID: V-38673
# Severity: CAT II Class: Unclass

RHEL-06-000302-to-307:
   cron.present:
     - name: /usr/sbin/aide --check
     - user: root
     - hour: 23
     - minute: 1
     - dayweek: 6
     - comment: "# RHEL-06-000302: Run AIDE Daily"
     - require:
       - pkg: aide
