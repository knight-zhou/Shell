#!/bin/bash
mysql -uroot -p123456 -e "update mysql.user set Host='183.33.44.88' where Host='248.29.77.180';"
