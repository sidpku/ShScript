#!/bin/bash
# bash: finding unfinished tasks, save in a new file
# Input: No
# Constant:
# `	FILENAME:	file contains my tasks
#	OUTPUT:		FIle to save
# Output: File save the Unfinished task.
# Author:	Sid(cnqdcyq@163.com)
# Date:		2021-6-16
# Version:
#	1.0:	create,use grep and awk to summary all unfinished tasks in markdown
#			files.
FILENAME='DailyReport.md'
OUTPUT='UnFinished.md'


grep -n '\-\s\[\s\]' $FILENAME |awk -F ':' '{print $2 "\t(Page:"$1")"}' > $OUTPUT
