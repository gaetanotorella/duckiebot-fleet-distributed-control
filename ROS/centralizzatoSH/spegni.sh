#!/bin/bash
# Shut down the two Duckiebots of the centralized setup. Each ssh asks for the robot's password.
for robot in db1 db2; do
    ssh -t duckie@"$robot".local 'sudo shutdown -h now'
done
