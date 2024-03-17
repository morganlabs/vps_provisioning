#!/bin/env python

import bcrypt

password = input("Please enter the password: ")

hashed_password = bcrypt.hashpw(password.encode(), bcrypt.gensalt())
print(hashed_password.decode())
