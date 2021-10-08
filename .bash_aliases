# ~/.bash_aliases
# eyedi's Alias

# Access to AWS alias
#alias light="ssh -i /Users/eunseokji/Workspaces/.eyedi-instance01.pem ubuntu@13.124.87.78"

# access to GCP(Google Cloud Platform)
alias googlecp="ssh -i ~/.ssh/eyedi-instance gdregas18@35.233.179.53"

# Run local jeykll ruby server
alias   rungitpage='arch -x86_64 bundle exec jekyll serve'

# open exeplorer.exe in Window WSL2 system
# alias exph='explorer.exe .' 

alias cta='ctags -R'

# Alias
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ll='ls -ailtrh'
alias dir='ls -lF'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'

alias cta='ctags -R'
# *.py grep
alias pgrep='find . -name "*.py" | xargs grep --color  -n $1'
alias chgrep='find . -name "*.[hcC]" |xargs grep --color -n $1'

alias nagrep='find . \( -name "*.[hcCSs]" -o -name "Makefile" -o -name "Kconfig" -o -name "*.sh" \) |xargs grep --color -n $1'
alias hgrep='find . -name "*.h" | xargs grep --color  -n $1'
alias cgrep='find . -name "*.[cC]" |xargs grep --color -n $1'
alias chgrep='find . -name "*.[hcC]" |xargs grep --color -n $1'
alias shgrep='find . -name "*.[shH]" | xargs grep --color -n $1'
alias grpe='grep --color'
alias grep='grep --color'
alias kgrpe='find . -name "Kconfig" |xargs grep --color -n $1'
alias cgrpe='find . -name "*.[cC]" |xargs grep --color -n $1'
alias agrep='find . -name "*" |xargs grep --color --exclude-dir=dir -n $1'
alias Sgrep='find . -name "*.S" |xargs grep --color -n $1'
alias sgrep='find . -name "*.s" |xargs grep --color -n $1'
alias ogrep='find . -name "*.o" | sed -e "s/o$/c/" | xargs grep -s --color -n $1'
alias mgrep='find . \( -name "Makefile" -o -name "*.mk" \)  |xargs grep  -n $1'
alias kgrep='find . -name Kconfig |xargs grep --color -n $1'
alias psgrep='ps -ef | grep $1'

alias where='find ./ -name "*" |xargs grep --color -n $1'
alias wherc='find ./ -name "*.[cC]" |xargs grep --color -n $1'
alias wherh='find ./ -name "*.[hH]" |xargs grep --color -n $1'
alias whers='find ./ -name "*.[sS]" |xargs grep --color -n $1'
alias wherm='find ./ -name "Makefile" |xargs grep --color -n $1'
alias findn='find ./ -name $1'

alias rmo='find . -name "*.o" | xargs /bin/rm -f $1 ; find . -name "*.gdb" | xargs /bin/rm -f $1 ; find . -name ".*.flags" | xargs /bin/rm -f $1 ; find . -name ".depend" | xargs /bin/rm -f $1'
alias rmcmd='find . -name ".*.cmd" | xargs rm -f $1'
alias rmswp='/usr/bin/find . -name ".*.swp" | xargs rm -f'

alias k='kubectl'
alias x='kubectx'
