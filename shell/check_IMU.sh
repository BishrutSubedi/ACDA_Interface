#!/bin/sh
var1=$(sshpass -p temppwd ssh root@192.168.1.131 "pgrep main")
echo $var1 
