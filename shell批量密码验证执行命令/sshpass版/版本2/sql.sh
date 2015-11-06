#!/bin/bash
mysql -uroot -pHbY2015 -e "update mysql.user set Host='183.62.141.88' where Host='218.27.77.180';"
