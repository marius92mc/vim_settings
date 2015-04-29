export PS1="\[\033[32m\]\u\[\033[32m\]@\[\033[32m\]\h:\[\033[36m\]\w\[\033[m\]\n                \$ "
# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

alias ls="ls -G"
alias grep="grep --color=auto"
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

