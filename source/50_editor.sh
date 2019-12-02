# Editing

alias vi=vim

if [ -x "/Applications/Emacs.app/Contents/MacOS/Emacs" ]
then
    # On a new Mac of mine, I am going to give it a whirl to try using
    # GNU Emacs for Mac OS X downloaded from
    # https://emacsformacosx.com
    export EMACS="/Applications/Emacs.app/Contents/MacOS/Emacs"
elif [ -x "/opt/local/bin/emacs" ]
then
    # On my Macs, I like to use the MacPorts-installed version of
    # Emacs over the version that comes with OS X by default, which is
    # still version 21.x originally released in 2007, even on the
    # latest Mac OS Sierra!
    export EMACS="/opt/local/bin/emacs"
else
    export EMACS="emacs"
fi

export EDITOR="${EMACS}"
export VISUAL="${EDITOR}"
alias e="${EDITOR}"
alias emacs="${EDITOR}"
