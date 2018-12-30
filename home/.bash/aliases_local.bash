#!/usr/bin/env bash

# shopt -s expand_aliases
shopt -s direxpand

alias pbc='pbcopy'
alias o='open'
alias oo='open .'
alias ot="open -a /Applications/TextMate.app"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

# Update MacPorts, installed packages and locateDB
alias update='brew update; brew upgrade; brew cleanup;  LC_ALL='C'; sudo updatedb'

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# shortcuts for cd
pr=~/Documents/Code
ds=~/Documents/Code/Work

# rec=~/Documents/PhD/Codes
# the=~/Documents/PhD/Manuscript
# rep=~/Documents/PhD/Reports
# lit=~/Documents/PhD/Lit
# phd=~/Documents/PhD
# papers=~/Documents/PhD/Papers
