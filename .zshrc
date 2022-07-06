# === Options ===
# see http://zsh.sourceforge.net/Doc/Release/Options.html for reference

# general interaction options
setopt AUTO_CD                    # just write directory, testing to see if I like it
setopt NO_BEEP                    # beeps get annoying for cycling completions
setopt CORRECT                    # spellcheck
setopt AUTO_NAME_DIRS             # used named dirs
setopt IGNORE_EOF                 # forces use of exit to exit vs ^D
setopt RM_STAR_WAIT               # 10sec wait for deleting everything, never had this problem but why not
setopt NO_CASE_GLOB               # case insensitive glob
setopt MENU_COMPLETE              # make case insensitive complete work more nicely
setopt ZLE                        # 'magic' or the line editor
setopt VI                         # use VI keybinds in ZLE
# setopt NO_CLOBBER                 # reference only, I often want things to get clobbered

# pushd related options
setopt AUTO_PUSHD                 # cd == pushd so we have a directory stack
setopt PUSHD_MINUS                # exchanges meaning of - and + in spec'ing dir on stack
setopt PUSHD_TO_HOME              # blank pushd goes to home
# setopt PUSHD_SILENT               # silence pushd listings

# glob options
setopt GLOB_COMPLETE              # expansion for globs
setopt NO_CASE_GLOB               # case insensitive
setopt NUMERIC_GLOB_SORT          # sort results numerically
setopt EXTENDED_GLOB              # extended syntax for globbing


# === PATH editing ===
export PATH="/opt/homebrew/bin:$PATH"                   # m1 homebrew location
alias brew="/opt/homebrew/bin/brew"                           # point to the right vim

# setup vim
export EDITOR="vim"

# === Modules ===
autoload -U compinit promptinit zcalc zsh-mime-setup zmv
compinit
promptinit
zsh-mime-setup

# === paths, etc. ===
source "$HOME/dotfiles/.shellsetup"                            # shared setup between bash and zsh

# === git modules ===
ZDIR="$HOME/dotfiles/.zsh"                                     # set the directory used for zsh files
antibody bundle < "$ZDIR/bundles.zh" > "$HOME/.bundles.txt"    # antibody and place into .bundles.txt
source "$HOME/.bundles.txt"                                    # source load all the bundles

# === prompt, aliases, etc. ===
source "$ZDIR/prompt.zh"                                       # my custom prompt
source "$ZDIR/aliases.zh"                                      # my custom aliases

# android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# opam configuration
test -r /Users/maggie/.opam/opam-init/init.zsh && . /Users/maggie/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
