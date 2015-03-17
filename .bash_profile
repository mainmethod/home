source ~/.git-prompt.sh
export PS1='\n\[\e[0;36m\][\[\e[38;5;208m\]\w\[\e[0;36m\]]\e[38;5;197m\]$(__git_ps1 " [%s]")\n\[\e[1;32m\]\u\[\e[1;37m\]@\[\e[1;30m\]\h\[\e[0;32m\]->\[\e[1;32m\] '
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export APP_ENVIRONMENT=development
export EDITOR=/usr/bin/vim
export PATH=/opt/local/bin:~/bin:/opt/local/sbin:/opt/local/apache2/bin:/opt/local/lib/mysql55/bin:$PATH

alias la='ls -a'
alias fucking='sudo'
alias peaceout='logout'
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
alias reload='source ~/.bash_profile'
alias logs='cd /opt/local/apache2/logs/'
alias back='cd $OLDPWD'
alias rm='rm -i'
alias grep='grep --color=auto'
alias wget='wget --no-check-certificate'
alias vi='vim'
alias mantar='tar -zcvf'
alias untar='tar -xzvf'
alias bzip2='bzip2 -v'
alias bunzip2='bunzip2 -v'
alias vhosts='sudo vim /opt/local/apache2/conf/extra/httpd-vhosts.conf'
alias find='mdfind'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -x /opt/local/bin/fortune ]; then
    printf "\n"
    /opt/local/bin/fortune
fi

project(){
    cd ~/Sites/$1
}

dump(){
    mysqldump -uroot -proot $1 > ~/sql_dumps/$1_`date +"%Y_%m_%d"`.sql
}

grep_file(){
    numargs=$#
    if [ $numargs -eq 1 ]; then
        cat $1
    elif [ $numargs -eq 2 ]; then
        cat $1 |grep $2
    else
        echo "must supply filename, or filename and string to search"
    fi
}

##
# Your previous /Users/robfarrell/.bash_profile file was backed up as /Users/robfarrell/.bash_profile.macports-saved_2015-03-03_at_10:46:52
##

# MacPorts Installer addition on 2015-03-03_at_10:46:52: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
