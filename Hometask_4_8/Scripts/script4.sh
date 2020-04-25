#!/bin/bash


ls -R -la $HOME | awk '{print $7 $6"\t"$8"\t"$9}' > home_directory_date_and_name_file.txt
