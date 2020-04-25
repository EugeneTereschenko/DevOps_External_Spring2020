#!/bin/bash

declare My_name="Yevhen Tereshchenko"
echo $My_name | sed -e "s/Yevhen Tereshchenko/Test/g" > change_user_name_by_sed.txt

