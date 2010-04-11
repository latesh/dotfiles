zle -N newtab

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char 

# oh-my-zsh stuff below

# TODO: Explain what some of this does..
# autoload -U compinit
# compinit
# 
# bindkey -e
# bindkey '\ew' kill-region
# bindkey -s '\el' "ls\n"
# bindkey -s '\e.' "..\n"
# bindkey '^r' history-incremental-search-backward
# bindkey "^[[5~" up-line-or-history
# bindkey "^[[6~" down-line-or-history
# 
# # make search up and down work, so partially type and hit up/down to find relevant stuff
# bindkey '^[[A' up-line-or-search
# bindkey '^[[B' down-line-or-search
# 
# bindkey "^[[H" beginning-of-line
# bindkey "^[[1~" beginning-of-line
# bindkey "^[[F"  end-of-line
# bindkey "^[[4~" end-of-line
# bindkey ' ' magic-space    # also do history expansion on space


#bindkey -s '^X^Z' '%-^M'
#bindkey '^[e' expand-cmd-path
#bindkey '^[^I' reverse-menu-complete
#bindkey '^X^N' accept-and-infer-next-history
#bindkey '^W' kill-region
#bindkey '^I' complete-word
## Fix weird sequence that rxvt produces
#bindkey -s '^[[Z' '\t'
#