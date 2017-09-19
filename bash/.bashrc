export EDITOR='vim'

# Load all the scripts in the directory
while read script; do
	source "${script}"
done < <(find "${HOME}/dotfiles/bash" -name "*.sh")
