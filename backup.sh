#!/bin/sh


[ ! -x $(which ssh) ] && pkg install ssh -y
[ ! -x $(which ssh) ] && pkg install curl -y

CURL="/usr/local/bin/curl"
BOT_TOKEN='[token_bot]'
USER="[id_chat_ou_id_grupo]"
COOKIE="/tmp/telegram_cookie-$(date "+%Y.%m.%d-%H.%M.%S")"
SUBJECT="�^=^r� Backup do `hostname` foi realizado com sucesso as `date +%d-%m-%Y--%H:%M:%S` "

#Utilizando SCP para fazer backup
scp -o BindAddress=[ip_interface_origem] /cf/conf/config.xml [user]@[ip_destino]:[caminho_destino]/config-`hostname`-`date +%d_%m_%Y`.xml |
echo "Backup Realizado comSucesso!"

${CURL} -k -c ${COOKIE} -b ${COOKIE} -X GET "https://api.telegram.org/bot${BOT_TOKEN}/sendMessage?chat_id=${USER}&text=${SUBJECT}" > /dev/null
