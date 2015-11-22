# Rule Title:  The x86 Ctrl-Alt-Delete key sequence must be disabled.
# STIG ID: RHEL-06-000286  Rule ID: SV-50469r2_rule  Vuln ID: V-38668
# Severity: CAT I Class: Unclass

/etc/init/control-alt-delete.override:
  file.replace:
    - pattern: ^exec.*.ontrol..lt..elete.*
    - repl: 'exec /usr/bin/logger -p security.info "Control-Alt-Delete pressed"'
    - append_if_not_found: True
