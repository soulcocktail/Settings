#Bash Aliases - This is compatible with Fedora only
#(because it uses 'dnf' on the section starting in line 7)
#for general usage ignore/modify/remove reference to it. Although there is a version of
#this file for Debian bassed systems (apt) on my Github here:
#https://raw.githubusercontent.com/idevHive/Settings/master/Bash/.bash_aliases_debian'

#System-based aliases
alias update='sudo dnf update && sudo dnf upgrade'
alias clean='sudo dnf clean all'

#General Usage
alias c='clear'
alias h='history'
alias j='jobs -l'
alias .1='cd ..'
alias .2='cd ../../'
alias .3='cd ../../../'
alias ll='ls -l'
alias la='ls -al'
alias vi='vim'
alias svi='sudo vi'
alias edit='vim'
alias now='date +"%T"'
alias timenow='now'
alias datenow='date +"%m-%d-%y"'
alias diff='colordiff'
alias vimconfig='vim ~/.vimrc'
alias sublime='subl' #subl & sublime-text are the same
alias editprompt='atom ~/.bash/.bash_prompt'
alias editprofile='atom ~/.bash_profile'
alias editfunctions='atom ~/.bash/.bash_functions'
alias editalias='atom ~/.bash/.bash_aliases'
alias applyalias='source ~/.bashrc'
alias gitcompletion='curl -OL https://github.com/git/git/raw/master/contrib/completion/git-completion.bash > ~/.git-completion.bash'

#Networks
alias ping='ping -c 5'
alias fastping='ping -c 100 -s.2'
alias ports='netstat -tulanp'

#GIT-related aliases
alias gitignorehere='curl https://raw.githubusercontent.com/idevHive/Settings/master/dotfiles/Git/.gitignore > .gitignore'
alias gogit='cd ~/Documents/GIT/repo/'
alias gobash='cd ~/Documents/GIT/repo/Settings/dotfiles/Bash/Fedora/.bash/'
#updates the alias on the git repo to match the one on use (`s`alias -> stands for sync)
alias salias='pathere=$(pwd) && gobash && cp ~/.bash/.bash_aliases .bash_aliases && cd $pathere && unset pathere'
alias gs='git status'
alias ga='git add'
alias gr='git rm'
alias gc='git commit -m'
alias gp='git push'
alias gb='git branch'
alias gl='git log --oneline' # add additional flag [-(1+)] to specify quantity
alias gch='git checkout'
alias gac='git commit -am'
alias gbm='git branch --merged'
alias gundo='git reset --hard' #folowed by the SHA1 wanted from: `gl`
alias gpull='git pull origin master'
alias gpush='git push origin master'
#DNA = Download new aliases & UNA = Upload new aliases
alias dna='curl https://raw.githubusercontent.com/idevHive/Settings/master/dotfiles/Bash/Fedora/.bash/.bash_aliases > ~/.bash/.bash_aliases'
alias una='pathere=$(pwd) && salias && ga . && gc "Update aliases for Fedora" && gpush && cd $pathere && unset pathere'

#XAMPP-related aliases
alias lampp='pathere=$(pwd) && cd /opt/lampp && sudo ./manager-linux-x64.run && cd $pathere && unset pathere'

#42 repos shortcuts
alias 42='cd ~/Documents/GIT/repo/42/'
alias libft='42 && cd Projects/Basics/Libft/'
alias fillit='42 && cd Projects/Basics/Fillit'
