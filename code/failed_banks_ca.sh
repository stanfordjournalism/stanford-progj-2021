#!/bin/bash

# Silence the output of curl and write the results to specified file
curl -s --output banklist.csv https://www.fdic.gov/resources/resolutions/bank-failures/failed-bank-list/banklist.csv

# TODO: create ca_failed_banks.csv
# It must have the same header row as the original file (banklist.csv)
# Check out the bash drill for pointers on get the first line of a file
# and redirecting the content to a new file
#  https://github.com/stanfordjournalism/stanford-progj-2021/blob/main/exercises/bash_drill.md

# WRITE THE COMMAND(S) HERE

# TODO: Next, filter banklist.csv for just the CA banks
# and APPEND those rows to the new file (ca_failed_banks.csv)
# WARNING: Make sure you append as opposed to overwriting the data!
# See the bash drill for pointers
#  https://github.com/stanfordjournalism/stanford-progj-2021/blob/main/exercises/bash_drill.md

# WRITE THE COMMAND HERE

ROW_COUNT=`wc -l < ca_failed_banks.csv | xargs` # HACK to strip whitespace
# SUBTRACT THE HEADER ROW FROM FINAL COUNT
NUM_BANKS=$(($ROW_COUNT - 1))
echo "There are ${NUM_BANKS} failed banks in California"

