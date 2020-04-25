#!/bin/bash

declare My_name="Yevhen Tereshchenko"

echo $My_name | awk '{gsub(/Yevhen Tereshchenko/,"Test")}1' > change_user_name_by_awk.txt
