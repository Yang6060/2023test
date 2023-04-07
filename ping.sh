#!/bin/bash
ping_success_status() {
       if ping -c 1 $IP >/dev/null; then
          echo "$IP ping is successful."
          continue #跳出本次循环
       fi
}
IP_LIST=$(cat ip.txt)
for IP in $IP_LIST; do
       ping_success_status
       ping_success_status
       ping_success_status
       echo "$IP ping is failure!"
done        
