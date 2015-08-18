# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'

# my aliases
alias open="xdg-open"
alias chrome="google-chrome"
alias battery="acpi -V"
alias install="sudo apt-get install"
alias remove="sudo apt-get remove"
alias update="sudo apt-get update"
alias dtop="cd ~/Desktop"
alias box="cd ~/Dropbox"
alias windows="cd /media/aelk/Windows/Users/AndrewE/Desktop"
alias q="exit"
alias duplicate="xrandr --output HDMI1 --off && xrandr --output HDMI1 --auto --scale-from 1920x1080"
alias em="emacs"
alias trash="cd /home/aelk/.local/share/Trash"
