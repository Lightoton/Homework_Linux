#!/bin/bash
 
 set -e 
 cat /proc/cpuinfo >> task.txt 
 cat /etc/os-release | grep "^NAME" >> task.txt
 cat /etc/os-release | grep "^NAME" | sed 's/NAME=//' >> task.txt
 

	for run in {1..10} 
	do 
	date +"%Y-%m-%d %T" 
	sleep 1 
	ps -ef | grep -v "^PID" | wc -l
	done	
	

	for file in {50..100}
	do
	>> $file.txt
	done
