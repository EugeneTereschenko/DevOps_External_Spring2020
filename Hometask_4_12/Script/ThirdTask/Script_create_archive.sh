#!/bin/bash

tar -zcvf backup-stat-`date +%Y-%m-%d_%H-%M-%S`.tar.gz --absolute-names /home/yevhen/memory/stat

tar -zcvf backup-log-`date +%Y-%m-%d_%H-%M-%S`.tar.gz --absolute-names /home/yevhen/memory/main.log
