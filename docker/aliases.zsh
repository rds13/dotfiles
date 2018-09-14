
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
alias osdsh='docker run -ti --rm -v $(pwd):/data --env-file $(source $SECS/openstack/rds-opd-openrc.sh; env | grep "^OS_" > $SECS/openstack/env_file; echo $SECS/openstack/env_file) jmcvea/openstack-client'
