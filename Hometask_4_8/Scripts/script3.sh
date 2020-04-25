#!/bin/bash

ls -R -la $HOME | sed '/total/d' > home_directory_without_string_total.txt
