#!/usr/bin/bash

screen -S mha -dm /usr/bin/bash -c "/home/ir/mha/bin/python3 /home/ir/mha/email-header-analyzer/mha/server.py -p 8081"
