
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
alias dclock="boot2docker ssh \"sudo ntpclient -s -h pool.ntp.org && date\""

