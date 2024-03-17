# VPS Provisioning stuff

This is 2 ansible playbooks designed to provision my VPS!

## Why 2 playbooks?

1 is for the first-time setup. This will set the root password to something much more
secure, create a new user for you to login with, add an SSH public key to that new
users authorised keys, disable root login via SSH, password authentication via SSH,
and restart `sshd`.

The second is to be ran after that one. This one will do things like install docker,
Nextcloud, etc.

I was far too lazy to do some magic that would like:

1. Check if Root was available via SSH. If it is:
    1. Disable it
    2. Create a new user
    3. Disable password auth
    4. etc.
2. If root is inaccessible
    * Run all setup tasks

Like, I probably could have but... I didn't. If anyone who is more of an Ansible God
sees this:

1. Don't judge me too harshly on the setup here
2. How do y'all do that??

