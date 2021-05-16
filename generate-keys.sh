mkdir .ssh
ssh-keygen -t rsa -f .ssh/id_rsa -C ${COMMENT:-default}
