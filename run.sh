#!/bin/bash
# @Author: haodaquan
# @Date:   2017-06-29 17:44:45
# @Last Modified by:   haodaquan
# @Last Modified time: 2017-06-29 17:44:45


case $1 in 
	start)
		nohup ./9wenwo 2>&1 >> info.log 2>&1 /dev/null &
		echo "服务已启动..."
		sleep 1
	;;
	stop)
		killall 9wenwo
		echo "服务已停止..."
		sleep 1
	;;
	restart)
		killall 9wenwo
		sleep 1
		nohup ./9wenwo 2>&1 >> info.log 2>&1 /dev/null &
		echo "服务已重启..."
		sleep 1
	;;
	*) 
		echo "$0 {start|stop|restart}"
		exit 4
	;;
esac
