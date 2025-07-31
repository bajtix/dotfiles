if status is-interactive
    fastfetch -c examples/8
end

alias note=/usr/bin/vim
alias vim=/usr/bin/nvim

set fish_greeting "$(shuf ~/.config/fish/welcomes.txt -n1) | $(date)"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# .. but were modified so that the startup does not take ages.
export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1
#if test -f /opt/miniconda3/bin/conda
#	# this part took very long for some reason.	
#	eval /opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
#else
if test -f "/opt/miniconda3/etc/fish/conf.d/conda.fish"
	source "/opt/miniconda3/etc/fish/conf.d/conda.fish"
else
	set -x PATH "/opt/miniconda3/bin" $PATH
end
#end
# <<< conda initialize <<<

