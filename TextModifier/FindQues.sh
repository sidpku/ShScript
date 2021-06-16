#!/bin/bash
# bash: finding unanswered questions, save in a new file
# Input: No
# Constant:
# `	FILENAME:	file contains my questions
#	OUTPUT:		FIle to save
# Author:	Sid(cnqdcyq@163.com)
# Date:		2021-6-16
FILENAME='DailyReport.md'
OUTPUT='UnFinished.md'


grep -n '\-\s\[\s\]' $FILENAME |awk -F ':' '{print $2 "\t(Page:"$1")"}' > $OUTPUT
