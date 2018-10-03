#!/bin/bash
# extract IP's from access logs

grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' /var/log/nginx/access.log |\
sort |uniq -c |sort -rn
