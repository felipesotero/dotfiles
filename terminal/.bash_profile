# Make sublime work on the command line
export PATH=/bin:/sbin:/usr/local/bin:/usr/bin:/usr/local/sbin:/Users/luizsotero/bin:$PATH
export EDITOR='subl -w'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Added for homebrew
export PATH="/usr/local/bin:$PATH"

### For git completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

### for handling more files at once
ulimit -n 2560

export NVM_DIR="/Users/luizsotero/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# set where virutal environments will live
export WORKON_HOME=$HOME/.virtualenvs
# ensure all new environments are isolated from the site-packages directory
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
# use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# makes pip detect an active virtualenv and install to it
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /Users/luizsotero/Library/Python/2.7/bin/virtualenvwrapper.sh ]]; then
    source /Users/luizsotero/Library/Python/2.7/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/luizsotero/.sdkman"
[[ -s "/Users/luizsotero/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/luizsotero/.sdkman/bin/sdkman-init.sh"
