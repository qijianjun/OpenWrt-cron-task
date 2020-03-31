LOGTIME=$(date "+%Y-%m-%d %H:%M:%S")
wget --spider --quiet --tries=1 --timeout=3 www.google.com
if [ "$?" == "0" ]; then
#     echo '['$LOGTIME'] No Problem.'
        exit 0
else
        wget --spider --quiet --tries=1 --timeout=3 www.baidu.com
        if [ "$?" == "0" ]; then
                echo '['$LOGTIME'] Problem decteted, restarting kcptun.'
                /etc/init.d/kcptun restart
        else
                echo '['$LOGTIME'] Network Problem. Do nothing.'
        fi
fi

