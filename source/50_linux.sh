# Linux stuff. Abort if not a Linux distribution.
is_linux || return 1

# Add tab completion for many Bash commands
[[ -r "/etc/profile.d/bash_completion.sh" ]] && source "/etc/profile.d/bash_completion.sh"

# If OracleDB exists then set Oracle env
[[ -r "/etc/profile.d/oracle_env.sh" ]] && source "/etc/profile.d/oracle_env.sh"

if has_systemd
then
   alias sctl='sudo systemctl'
   alias jctl='sudo journalctl'
   alias ccze='ccze -A -o nolookups'
   alias tt='jctl -u tomcat -f | ccze'
   alias tomcattail=tt
   alias tt2day='jctl -u tomcat -o cat -S today | ccze'
   alias tt2min='jctl -u tomcat -o cat -S "2 minutes ago" | ccze'
   alias tt5min='jctl -u tomcat -o cat -S "5 minutes ago" | ccze'

   alias tcrst='sctl restart tomcat'
   alias restarttomcat=tcrst
fi

export EDITOR="vim"
export VISUAL="$EDITOR"
export ALTERNATE_EDITOR=""
