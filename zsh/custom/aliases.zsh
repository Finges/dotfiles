# Proxy Aliases
alias fingesproxy='ssh -qCnfND 8888 fingesdev'

# Command Aliases
alias pianobar='pianobar 2>&1 | grep -v API'


# OSX Specific Commands
if [[ "$OSTYPE" == "darwin"* ]]; then
  alias vim='mvim -v'
fi
