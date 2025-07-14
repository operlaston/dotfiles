export PATH=$PATH:/opt/homebrew/bin

export ZSH="$HOME/.oh-my-zsh"

# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias zshconfig="nvim ~/.zshrc"
alias c="clear"
alias pip="pip3"
alias python="python3"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# NVM zsh initialize BEGIN - do not modify #
export NVM_HOME="${HOME}/nvm"
NVM_SH="${NVM_HOME}/bin/nvm.sh"
if [ -s "${NVM_SH}" ]; then
  export NVM_LINK="${HOME}/nvm/nodejs/bin"
  export NVM_NODEJS_ORG_MIRROR="https://repository.walmart.com/content/repositories/nodejs/"
  source "${NVM_SH}"
else
  unset NVM_HOME
  NVM_ERROR="${NVM_SH} is not valid"
fi
unset NVM_SH
# NVM zsh initialize END - do not modify #

export JAVA_HOME="/opt/homebrew/Cellar/openjdk@21/21.0.7/libexec/openjdk.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"

# export JAVA_HOME="/opt/homebrew/Cellar/openjdk@17/17.0.15/libexec/openjdk.jdk/Contents/Home"
# export PATH="$JAVA_HOME/bin:$PATH"
# export PATH=/opt/homebrew/opt/openjdk@17/bin:$PATH
