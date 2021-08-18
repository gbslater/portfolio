#!/usr/bin/python3
# BruteForce.py

# Version  Date        Author     Description
# 1.0      16-AUG-2021 G Slater   Initial version
   
import itertools
import string
import hashlib
import time

#hidden password hash
PasswordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"
StartTime = time.time()
Counter = 1

# For each character length 
for CharLength in range(25):
    # For each guess using the itertools.product for the char length
    # I am just using the ascii lowercase for this logic as when I include
    # all of the characters it takes a long time
    for Guess in itertools.product(string.ascii_lowercase, repeat=CharLength):
    #for Guess in itertools.product(string.ascii_letters+string.digits+string.punctuation, repeat=CharLength):
        Pwd = ''.join(Guess)
        # Hash the guess pwd
        PwdHash = hashlib.sha256(Pwd.encode("utf-8")).hexdigest()
        Counter += 1
        
        print(f"Trying password {Pwd} : {PwdHash}")
        # Check the pwdHash against the target hash
        if(PwdHash == PasswordHash):
            # Calculate the time taken
            EndTime = time.time()
            TimeTaken = EndTime - StartTime
            TimeResult = time.gmtime(TimeTaken)
            Result = time.strftime("%H:%M:%S",TimeResult)

            # Print the results
            print(f"Password has been cracked! It was {Pwd}")
            print(f"Password cracked in {Counter} attempts")
            print(f"Password cracked in {Result}")
            exit()
#
# References
# Pancake Hax. (2021). Password Brute-forcer in Python [Blog Post]. 
# Retrieved from https://www.instructables.com/Password-Brute-forcer-in-Python/
#
# AskPython. (2021). 4 Ways to convert seconds into hours and minutes in Python [Blog Post]. 
# Retrieved from https://www.askpython.com/python/examples/convert-seconds-hours-minutes
