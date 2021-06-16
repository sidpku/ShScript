#!/bin/bash
# test $# -lt 1 && echo "No filename input!" && exit 0
if test -z $1; then
	echo 'No filename input!'
	exit 1
fi
SHELL_NAME=""$1".sh"
MY_PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/root/source"
cd /root/source
if test -e "./"${SHELL_NAME}"";then
	echo "${SHELL_NAME} already exist!"
	exit 2
fi
touch ${SHELL_NAME}
echo '#!/bin/bash' >> ${SHELL_NAME} 2>&1
echo "PATH="${MY_PATH}"" >> ${SHELL_NAME} 2>&1
chmod +x ${SHELL_NAME}
exit 0


