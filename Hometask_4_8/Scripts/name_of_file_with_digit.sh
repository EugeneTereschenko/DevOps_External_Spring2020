#!/bin/bash

ls -R $HOME | sed -n '/[0-9]/p' > name_of_file_with_digit.txt
