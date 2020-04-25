#!/bin/bash

ls -R -la $HOME > home_directory.txt 


declare My_name="Yevhen Tereshchenko"
echo $My_name | sed -e "s/Yevhen Tereshchenko/Test/g" > change_user_name_by_sed.txt

echo $My_name | awk '{gsub(/Yevhen Tereshchenko/,"Test")}1' > change_user_name_by_awk.txt

ls -R -la $HOME | sed '/total/d' > home_directory_without_string_total.txt

ls -R -la $HOME | awk '{print $7 $6"\t"$8"\t"$9}' > home_directory_date_and_name_file.txt

ls -R $HOME | sed -n '/[0-9]/p' > name_of_file_with_digit.txt

ls | sed -n '/.*\./p' > search_file_by_it_exception.txt 
