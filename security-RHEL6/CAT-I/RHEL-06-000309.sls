# Rule Title:  The NFS server must not have the insecure file locking option enabled.
# STIG ID: RHEL-06-000309  Rule ID: SV-50478r1_rule  Vuln ID: V-38677
# Severity: CAT I Class: Unclass

/etc/exports:
  file.replace:
    - pattern: insecure_locks
    - repl: ""
