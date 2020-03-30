alias pbc='xclip -selection clipboard'
alias pbp='xclip -selection clipboard -o'
alias o='xdg-open'
alias oo='nautilus . &'
alias on='nautilus'
alias ge="gedit"

# Update APT, installed packages and locateDB
alias update='sudo apt-get -qq update; sudo apt-get -qq dist-upgrade; sudo apt autoremove; sudo apt-get autoclean; sudo updatedb'
# conda activate is too long
alias workon='conda activate'

# shortcuts for cd
pr=~/code
algo=~/code/algo
data=/data/misc
dpy=~/code/algo/dreemonpy
