source ~/.dotted-files/.bash/.aliases

# Color Prompt 
parse_git_branch() {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

source ~/.dotted-files/.bash/.environment_variables
source ~/.dotted-files/.bash/.command_prompt
