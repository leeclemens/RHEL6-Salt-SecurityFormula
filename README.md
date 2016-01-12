# RHEL6-Salt-SecurityFormula
A collection of Saltstack formulas for enforcing security compliance:

# Progress and Roadmap
- CAT-I   : Complete
- CAT-II  : Complete
- CAT-III : In progress
- Pam.D   : PENDING
- 

# Versions
These formulas are based on a RHEL6.7 Distribution of linux. Designed around u_Redhat_6_V1RT9_STIG provided by DISA.
Copies of the document these formulas are based on can be obtained: http://iase.disa.mil/stigs/os/unix-linux/Pages/index.aspx

# Organization:
Formula's will be broken up by Category rating(CAT-I to CAT-III).
Individual files will be named after the STIG-ID, IE: RHEL-06-000001

# Warning
This formula is intended to meet STIG guidelines to a 100% complaince mark, in every way that can be enforced via SaltStack. Your use of this formula will need to be adjusted to meet the use cases of your individual servers, in order to ensure ongoing system functionality.



# Important notice:
- CAT-II/RHEL-06-000290 Specifies that unless system requires X server, default runlevel should be 3. I've added a pillar check for "gui" to be set to equal "True" that will allow the default runlevel to be 5, this will have to be assigned to servers that require X to be running.

