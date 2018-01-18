### My infrastructure described in ansible ###
Ansible is used to bootstrap new machines up to a certain
state with ease, specifically a state apt for given tasks.

This system description attempts to be as modular as possible.  So that you can bootstrap a system according to the specific "roles" that you need to fill using that machine.  (Are you a web dev today? Include the web dev role.  Are you developing XXX firmware?  Include role... etc)

Procedure for a new machine:
1) Run `initialBootstrap.sh`

2) Select your modules.

Enjoi and be productive.
