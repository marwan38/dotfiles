# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Plugins ----------------------------------------------------------------------

if ! [ -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc
fi

zstyle :omz:plugins:ssh-agent identities id_rsa_marwan

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
    git
    z
    ssh-agent
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-history-substring-search
)
source $ZSH/oh-my-zsh.sh

# Begin ----------------------------------------------------------------------

DOTFILES="$HOME/$(dirname $(readlink $(print -P %N)))"
export EDTIOR=nvim

function have_cmd {
    if ! hash $1 2>/dev/null; then
        echo "zshrc: Command '$1' is not installed"
        return 1
    fi
}

if [[ -d $DOTFILES/bin ]]; then
    PATH="$DOTFILES/bin:$PATH"
else
    echo "Error: Directory \"$DOTFILES/bin\" does not exist"
fi

# Variables --------------------------------------------------------------------

export ZSH_AUTOSUGGEST_USE_ASYNC=1

# History ----------------------------------------------------------------------
HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY
setopt HIST_REDUCE_BLANKS

# Pager ------------------------------------------------------------------------
export PAGER="less"

export LESS="\
    --RAW-CONTROL-CHARS \
    --ignore-case \
    --LONG-PROMPT \
    --quit-if-one-screen \
    --chop-long-lines"

export MANPAGER='nvim +Man!'

# Other ----------------------------------------------------------------------

setopt NO_BEEP
# Stop ctrl-d from closing the shell
setopt IGNORE_EOF

# Aliases ----------------------------------------------------------------------

# alias ls='ls --color'
# alias ll='ls -goAh'

! [ -f ~/.aliases       ] || source ~/.aliases
! [ -f ~/.aliases_local ] || source ~/.aliases_local
! [ -f ~/.fzf.zsh       ] || source ~/.fzf.zsh
! [ -f ~/.zshrc_local   ] || source ~/.zshrc_local

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh