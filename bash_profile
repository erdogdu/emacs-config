alias grep="grep --colour='auto'"

export CLICOLOR=1
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

export PATH=/usr/local/bin:/Library/Frameworks/Python.framework/Versions/3.3/bin/:/Applications/MATLAB_R2013a.app/bin/:/usr/local/texlive/2017/bin/x86_64-darwin:$PATH
export PATH=$PATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin
export LC_ALL=C
export CFLAGS=-Qunused-arguments
export CPPFLAGS=-Qunused-arguments
##

# Finished adapting your PATH environment variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# added by Anaconda 2.1.0 installer
export PATH="/Users/erdogdu/anaconda/bin:$PATH"

# Coloured LESS (MAN) pages
export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode – red
export LESS_TERMCAP_md=$(printf '\e[01;35m') # enter double-bright mode – bold, magenta
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode
export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode – yellow
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[04;36m') # enter underline mode – cyan

# Emacs alias
#alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'
alias julia='/Applications/Julia-0.5.app/Contents/Resources/julia/bin/julia'
