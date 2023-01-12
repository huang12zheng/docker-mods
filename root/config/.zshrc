if [[ ! -d ~/.zplug ]]; then
git clone https://github.com/zplug/zplug ~/.zplug
source ~/.zplug/init.zsh && zplug update --self
else
source ~/.zplug/init.zsh
fi

# isRun=`ps aux | grep clash | grep '\-d'|grep -v grep|grep -v ansible|grep -v start`
# [ -n "$isRun" ] && export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890

# History config
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# zplug plugins
zplug "romkatv/powerlevel10k", as:theme, depth:1
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "zsh-users/zsh-completions"
# zplug "marlonrichert/zsh-autocomplete"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "zdharma/fast-syntax-highlighting"
zplug "zpm-zsh/ls"
# zplug "plugins/docker", from:oh-my-zsh
# zplug "plugins/composer", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/microk8s", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/web-search", from:oh-my-zsh
zplug "plugins/bgnotify", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh # esc twice
zplug "lib/completion", from:oh-my-zsh
# zplug "alias-finder", from:oh-my-zsh
zplug "plugins/history", from:oh-my-zsh
# https://github.com/cagiti/setup/blob/main/.functions#:~:text=%7D-,function%20kube-toggle()%20%7B,%7D,-%C2%A9%202021%20GitHub%2C%20Inc
# zplug "plugins/kube-ps1", from:oh-my-zsh
zplug "b4b4r07/enhancd", use:init.sh

# Install packages that have not been installed yet
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi
command -v fzf &> /dev/null || sudo apt install fzf
# command -v kuben &> /dev/null || (
#     sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx --depth=1 && \
#     sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx && \
#     sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
# )
zplug load
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh