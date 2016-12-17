#if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
#  GIT_PROMPT_THEME=Single_line_openSUSE
#  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
#fi

source ~/.git-completion.bash
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\033[32m\]\u\[\033[32m\]@\[\033[32m\]\h\[\033[m\]:\[\033[33m\]$(__git_ps1)\[\033[36m\]\w\[\033[m\]\n                \$ '
#export PS1="\[\033[32m\]\u\[\033[32m\]@\[\033[32m\]\h:\[\033[36m\]\w\[\033[m\]\n                \$ "

#function parse_git_dirty {
#  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
#}
#function parse_git_branch {
#    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
#}
#export PS1='\u:\[\033[31;40m\]\w\[\033[0;33m\]$(parse_git_branch)\[\e[0m\]$ '


# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH=${PATH}:~/Downloads/platform-tools
export PATH

alias ls="ls -G"
alias grep="grep -inE --color=auto"
alias rm="rm -i"



#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
    extract() 
    {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }



#   spotlight: Search for a file using MacOS Spotlight's metadata
#   -----------------------------------------------------------
    spotlight() 
    { 
        mdfind "kMDItemDisplayName == '$@'wc"; 
    }


#   ii:  display useful host related informaton
#   -------------------------------------------------------------------
    ii() 
    {
        echo -e "\nYou are logged on ${RED}$HOST"
        echo -e "\nAdditionnal information:$NC " ; uname -a
        echo -e "\n${RED}Users logged on:$NC " ; w -h
        echo -e "\n${RED}Current date :$NC " ; date
        echo -e "\n${RED}Machine stats :$NC " ; uptime
        echo -e "\n${RED}Current network location :$NC " ; scselect
        echo -e "\n${RED}Public facing IP Address :$NC " ; curl ip.appspot.com; 
        #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }


##
# Your previous /Users/marius/.bash_profile file was backed up as /Users/marius/.bash_profile.macports-saved_2015-12-29_at_12:22:39
##

# MacPorts Installer addition on 2015-12-29_at_12:22:39: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export PYSPARK_PYTHON=python3
export SPARK_HOME=~/Downloads/spark-2.0.1-bin-hadoop2.7
export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH
export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/pyhon/lib/py4j-0.9-src.zip:$PYTHONPATH

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin


GITHUB_API_TOKEN=11c70a3136eb19da8d2efff8710c78f9a8b5ad29

