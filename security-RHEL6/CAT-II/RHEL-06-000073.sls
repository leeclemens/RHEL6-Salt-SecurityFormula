# Rule Title:  The Department of Defense (DoD) login banner must be displayed immediately prior to, or as part of, console login prompts.
# STIG ID: RHEL-06-000073  Rule ID: SV-50394r1_rule  Vuln ID: V-38593
# Severity: CAT II Class: Unclass

RHEL-06-000073:
  file.managed:
    - name: /etc/issue
    - source: salt://{{ sls }}/RHEL-06-000073-source
     
