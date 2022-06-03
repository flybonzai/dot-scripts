# McKay's fish config
# Many of the cool tools come from https://switowski.com/blog/favorite-cli-tools
# Crucial productivity improvements: remap CTRL to CAPS and install Alfred (MAC)
set -Ux EDITOR vim

# Exports
set --export SBT_OPTS "-Xms512m -Xmx1536m -Xss2m"
set --export FZF_DEFAULT_COMMAND 'fd --type f --color=never'
set --export FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
set --export FZF_ALT_C_COMMAND 'fd --type d . --color=never'
set --export FZF_CTRL_T_OPTS "--preview 'bat --color=always --line-range :500 {}'"
set --export FZF_ALT_C_OPTS "--preview 'tree -C {} | head -100'"
set --export FZF_COMPLETION_TRIGGER '@@'
set --export SSH_KEY_PATH "~/.ssh/rsa_id"

# Aliases
alias ll='colorls -l -t --sd'
alias la='colorls -lA --sd'
alias lc='colorls -lA --sd --tree'
alias envls='set -xg'
alias fcbr='git checkout (git branch | fzf | string trim)'
alias fdbr='git branch -D (git branch | fzf | string trim)'
alias fgl='fzf_git_log'
alias chrome='open -a "Google Chrome"'
alias sshpi='ssh pi@10.0.0.8'
alias fsrc='source ~/.config/fish/config.fish'
alias fishrc='vim ~/.config/fish/config.fish'
alias vimrc='vim ~/.vimrc'
alias java8='asdf global java adoptopenjdk-8.0.302+8;. ~/.asdf/plugins/java/set-java-home.fish'
alias java11='asdf global java openjdk-11.0.2;. ~/.asdf/plugins/java/set-java-home.fish'
alias repos='cd ~/Code/repos'
alias kafka='cd ~/kafka/bin'
alias tmuxstart='bass ~/Code/repos/scripts/tmuxstart.sh'
alias dcupd='docker-compose up -d'
alias dcps='docker-compose ps'
alias dcl='docker-compose logs'
alias dcdn='docker-compose down'

set fish_key_bindings fish_user_key_bindings
starship init fish | source
zoxide init fish | source

# asdf
source ~/.asdf/asdf.fish
java11
