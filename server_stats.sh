#!/bin/bash

# return total cpu usage
printf "Getting total CPU usage:\n"
df -h --total

# total memory usage (free vs used in percentage)
printf "Returning available space:\n"
free -h

# total disk usage (free vs used in percentage)
printf "Returning total disk usage:\n\n"
df -h

# top 5 processes by cpu usage
printf "Listing top 5 processes by CPU usage:\n\n"
ps -Ao pid,comm,pcpu --sort=-pcpu | head -n 5

# top 5 processes by memory usage
printf "Listing top 5 processes by Memory usage:\n\n"
ps -Ao pid,comm,pmem --sort=-pmem | head -n 5