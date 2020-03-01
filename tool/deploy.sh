LELIAPP_VERSION=/home/www/leliapp.com/version.txt
OLDVERSION=/tmp/oldversion.txt
NOW=$(date)
version=$(cat ${LELIAPP_VERSION})
if [ ! -f ${OLDVERSION} ];then
    echo "${NOW} not exist and reload"
    bash /home/www/leliapp.com/tool/restart_flask.sh
    cp ${LELIAPP_VERSION} ${OLDVERSION}
    exit
fi

oldversion=$(cat ${OLDVERSION})
if [ ${version} -gt ${oldversion} ];then
    echo "${NOW} new version: ${version}"
    bash /home/www/leliapp.com/tool/restart_flask.sh
    cp ${LELIAPP_VERSION} ${OLDVERSION}
    exit
fi
echo "${NOW} same version"