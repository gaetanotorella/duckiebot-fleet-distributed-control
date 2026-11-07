#!/bin/bash
# Shut down the four Duckiebots of the decentralized setup. Each ssh asks for the robot's password.
for robot in db1 db2 ducklorean duckicha; do
    ssh -t duckie@"$robot".local 'sudo shutdown -h now'
done
