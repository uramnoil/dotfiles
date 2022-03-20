if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
  ssh-add ~/.ssh/github
fi

eval $(/usr/bin/locale-check C.UTF-8)