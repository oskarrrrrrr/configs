# EDIT bash_profile
alias bash_profile='cd; vim .bash_profile'

# PROMPT
export PS1="\e[31m\n\w\n=> "
export PS2="=> "

# DEFAULT EDITOR
export EDITOR=/usr/bin/vim

# BETTER TERMINAL
alias cp='cp -iv'
alias mv='mv -iv'

alias l='ls'
alias ll='ls -FGlAhp'

cd() { builtin cd "$@"; ll; }
alias cd..='cd ../'
alias ..='cd ../'
alias ...='cd ../../'
alias .1='cd ../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'
alias ~='cd ~'

alias f='open -a Finder ./'
alias c='clear'
alias plantuml='java -jar ~/.plantuml/plantuml.jar'

ql() { qlmanage -p "$*" >& /dev/null; }

# APPS
atom() { touch "$@"; open -a atom "$@"; }


# cdf: cd's to frontmos window of Finder
cdf () 
{
	currFolderPath=$( /usr/bin/osascript << EOT
		tell application "Finder"
			try
		set currFolder to (folder of the front window as alias)
			on error
		set currFolder to (path to desktop folder as alias)
			end try
			POSIX path of currFolder
		end tell
	)
	echo "cd to \"$currFolderPath\""
	cd "$currFolderPath"
}
