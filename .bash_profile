source ~/.aliases

export CLICOLOR=1			# turns on colors
export LSCOLORS=ExFxCxDxBxegedabagacad	# customize colors

# GIT FUNCTIONS
git_branch() {
    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# PROMPT LINE
PS1="\[\e[0;93m\]\u\[\e[m\]"			# user with color
PS1+=" @ \[\e[0;95m\]\W\[\e[m\]"		# current directory
PS1+="\[\e[0;92m\]\$(git_branch)\[\e[m\]"    	# current branch
PS1+=" $ "
export PS1

