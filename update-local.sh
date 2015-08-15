#!/bin/sh

PLAYBOOK="site.yml"
EXEC_NAME="ansible-playbook"
EXEC_PATH=$(which ansible-playbook)

if [ -z ${EXEC_PATH} ]; then
  echo "'${EXEC_NAME}' bulunamadı. Ansible kurulu değil. sudo apt-get install ansible"
  exit 1
fi

echo "Ansible playbook '${PLAYBOOK}' yerel olarak çalıştırılıyor... "
cd provisioning && ${EXEC_NAME} ${PLAYBOOK} -K
