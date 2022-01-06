### EXPORT ###
# set fish_greeting # Supresses fish's welcome message

### ALIASES ###

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Changing "ls" to "exa" 
alias ls='exa -al --color=always --group-directories-first'	# default listing
alias la='exa -a --color=always --group-directories-first'	# all files and dirs
alias ll='exa -l --color=always --group-directories-first'	# long format
alias lt='exa -aT --color=always --group-directories-first'	# tree listing

# Confirming changes before overwriting something
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Git
alias addup='git add'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias revert='git revert'

# Switching between shells
alias tobash="chsh -s /bin/bash"
alias tozsh="chsh -s /bin/zsh"
alias tofish="chsh -s /usr/local/bin/fish"

# Dotfiles config
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

### SET VI MODE ###
fish_vi_key_bindings

### SET "vim" AS MANPAGER ###
set -x MANPAGER '/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'

### SET RUST ENV VAR ###
set -gx PATH "$HOME/.cargo/bin" $PATH;

### STARSHIP ###
# starship init fish | source
