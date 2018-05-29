source ~/.bash_aliases

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

#powerline-shell prompt
# function _update_ps1() {
#     PS1="$(powerline-shell $?)"
# }
# if [ "$TERM" != "linux" ]; then
#     PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
# fi

#bash-powerline prompt
# source ~/.bash-powerline.sh

#powerline prompt
 # source /usr/share/powerline/bindings/bash/powerline.sh
 # POWERLINE_BASH_CONTINUATION=1
 # POWERLINE_BASH_SELECT=1
# if [ -d "$HOME/Library/Python/2.7/bin" ]; then
#     PATH="$HOME/Library/Python/2.7/bin:$PATH"
# fi
 powerline-daemon -q
# . /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

#powerline-go prompt
function _update_ps1() {
   	PS1="$(~/go/bin/powerline-go -error $? -cwd-max-dir-size 20 -newline -numeric-exit-codes -modules "venv,user,ssh,cwd,perms,git,jobs,exit,time")"
}
if [ "$TERM" != "linux" ]; then
   PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
# Usage of powerline-go:
#   -colorize-hostname
#     	 Colorize the hostname based on a hash of itself
#   -cwd-max-depth int
#     	 Maximum number of directories to show in path
#     	 (default 5)
#   -cwd-max-dir-size int
#     	 Maximum number of letters displayed for each directory in the path
#     	 (default -1)
#   -cwd-mode string
#     	 How to display the current directory
#     	 (valid choices: fancy, plain, dironly)
#     	 (default "fancy")
#   -east-asian-width
#     	 Use East Asian Ambiguous Widths
#   -error int
#     	 Exit code of previously executed command
#   -ignore-repos string
#     	 A list of git repos to ignore. Separate with ','.
#     	 Repos are identified by their root directory.
#   -max-width int
#     	 Maximum width of the shell that the prompt may use, in percent. Setting this to 0 disables the shrinking subsystem.
#   -mode string
#     	 The characters used to make separators between segments.
#     	 (valid choices: patched, compatible, flat)
#     	 (default "patched")
#   -modules string
#     	 The list of modules to load, separated by ','
#     	 (valid choices: aws, cwd, docker, dotenv, exit, git, gitlite, hg, host, jobs, load, nix-shell, perlbrew, perms, root, shell-var, ssh, termtitle, time, user, venv, node)
#     	 (default "venv,user,host,ssh,cwd,perms,git,hg,jobs,exit,root")
#   -newline
#     	 Show the prompt on a new line
#   -numeric-exit-codes
#     	 Shows numeric exit codes for errors.
#   -path-aliases string
#     	 One or more aliases from a path to a short name. Separate with ','.
#     	 An alias maps a path like foo/bar/baz to a short name like FBB.
#     	 Specify these as key/value pairs like foo/bar/baz=FBB.
#     	 Use '~' for your home dir. You may need to escape this character to avoid shell substitution.
#   -priority string
#     	 Segments sorted by priority, if not enough space exists, the least priorized segments are removed first. Separate with ','
#     	 (valid choices: aws, cwd, cwd-path, docker, exit, git-branch, git-status, hg, host, jobs, load, nix-shell, perlbrew, perms, root, ssh, time, user, venv, node)
#     	 (default "root,cwd,user,host,ssh,perms,git-branch,git-status,hg,jobs,exit,cwd-path")
#   -shell string
#     	 Set this to your shell type
#     	 (valid choices: bare, bash, zsh)
#     	 (default "bash")
#   -shell-var string
#     	 A shell variable to add to the segments.
#   -shorten-gke-names
#     	 Shortens names for GKE Kube clusters.
#   -theme string
#     	 Set this to the theme you want to use
#     	 (valid choices: default, low-contrast)
#     	 (default "default")
#   -truncate-segment-width int
#     	 Minimum width of a segment, segments longer than this will be shortened if space is limited. Setting this to 0 disables it.
#     	 (default 16)

# A better command history
export HISTCONTROL=ignoredups:erasedups
export HISTTIMEFORMAT='%F %T '
export HISTFILESIZE=2000000
export HISTSIZE=100000
#auto save history after each command
shopt -s histappend
# Combine multiline commands into one in history
shopt -s cmdhist

PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

eval $(thefuck --alias)
