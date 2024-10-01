
#░░░███████╗░██████╗██╗░░██╗██████╗░░█████╗░
#░░░╚════██║██╔════╝██║░░██║██╔══██╗██╔══██╗
#░░░░░███╔═╝╚█████╗░███████║██████╔╝██║░░╚═╝
#░░░██╔══╝░░░╚═══██╗██╔══██║██╔══██╗██║░░██╗
#██╗███████╗██████╔╝██║░░██║██║░░██║╚█████╔╝
#╚═╝╚══════╝╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░

# Enable for nordic dwm

#eval "$(starship init zsh)"
#eval "$(oh-my-posh init zsh --config ~/patriksvensson.omp.json)"

alias volume="pavucontrol &"

# Set Gruvbox color variables
GRUVBOX_BG="#282828"
GRUVBOX_FG="#ebdbb2"
GRUVBOX_RED="#cc241d"
GRUVBOX_GREEN="#98971a"
GRUVBOX_YELLOW="#d79921"
GRUVBOX_BLUE="#458588"
GRUVBOX_PURPLE="#b16286"
GRUVBOX_AQUA="#689d6a"
GRUVBOX_ORANGE="#d65d0e"
GRUVBOX_GRAY="#928374"

# Prompt components
PROMPT_CHAR="%F{$GRUVBOX_YELLOW}❯%f"
PROMPT_USER="%F{$GRUVBOX_ORANGE}%n%f"
PROMPT_HOST="%F{$GRUVBOX_AQUA}@%m%f"
PROMPT_DIR="%F{$GRUVBOX_GREEN}%~%f"
PROMPT_STATUS='%(?..%F{$GRUVBOX_RED}✘ %?)'

# Final prompt
PROMPT="${PROMPT_USER}${PROMPT_HOST} ${PROMPT_DIR} ${PROMPT_STATUS} ${PROMPT_CHAR} "

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/sarthak/.dart-cli-completion/zsh-config.zsh ]] && . /home/sarthak/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

export PATH=$HOME/.local/bin:$PATH

# Created by `pipx` on 2024-09-14 13:11:09
export PATH="$PATH:/home/sarthak/.local/bin"

export PATH="$HOME/.emacs.d:$PATH"


export PATH=$PATH:/home/sarthak/.spicetify
