# Rule Title:  A file integrity tool must be used at least weekly to check for unauthorized file changes, particularly the addition of unauthorized system libra    ries or binaries, or for unauthorized modification to authorized system libraries or binaries
# STIG ID: RHEL-06-000302  Rule ID: SV-50496r2_rule  Vuln ID: V-38695
# Severity: CAT II Class: Unclass
  
RHEL-06-000302:
   cron.present:
     - name: /usr/sbin/aide --check
     - user: root
     - hour: 23
     - minute: 1
     - comment: "# RHEL-06-000302: Run AIDE Daily"
