
#compdumpf
lcompdumpf(){
    # If completion insecurities exist, warn the user without enabling completions.
    if ! compaudit &>/dev/null; then
        # This function resides in the "lib/compfix.zsh" script sourced above.
        handle_completion_insecurities
        # Else, enable and cache completions to the desired file.
    else
        compinit -d "${ZSH_COMPDUMP}"
    fi
}

# composer
lcomposer(){
    source $ZSH/plugins/composer/composer.plugin.zsh
}
#for node 需要时加载
export NVM_DIR="$HOME/.nvm"
function lnvm(){
    [[ "$1" == 'upgrade' ]] && (
    cd "$NVM_DIR"
    git fetch origin
    git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
    )
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    [[ -r $NVM_DIR/bash_completion  ]] && . $NVM_DIR/bash_completion
    echo nvm loaded
}


#rvm
function lrvm(){
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
    echo rvm loaded
}

tput setaf 2
echo  "for load time reason, [lrvm lnvm lcomposer lcompdumpf], load for need"
tput sgr0
