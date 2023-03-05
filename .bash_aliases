# Alias - Make Terminal Great Again!
# ------------------------------------------------------------------------

alias mkdir='mkdir -pv' # Create intermediate dir as required & verbose
alias less='less -FSRXc'
alias cd..='cd ../'
alias ..='cd ../'
alias ...='cd ../../'
alias ~="cd ~"

# Use neovim for vim if present.
[ -x "$(command -v nvim)" ] && alias vim="nvim" vimdiff="nvim -d"

# Verbosity and settings that you pretty much just always are going to want.
alias \
	cp="cp -iv" \
	mv="mv -iv" \
	rm="rm -vI" \
	mkd="mkdir -pv" \
	ll="ls -FGlAhp --color=auto" \
	la="ls -A --color=auto" \
	l="ls -CF --color=auto" \
	less="less -FSRXc" \
	c="clear" \
	ffmpeg="ffmpeg -hide_banner"

# Colorize commands when possible.
alias \
	ls="ls -hN --color=auto --group-directories-first" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ccat="highlight --out-format=ansi"

# These common commands are just too long! Abbreviate them.
alias \
	ka="killall" \
	YT="youtube-viewer" \
	sdn="sudo shutdown -h now" \
	rbn="sudo reboot" \
	f="$FILE" \
	e="$EDITOR" \
	v="$EDITOR" \
	vim="$EDITOR" \
	sup="sudo apt update" \
	sug="sudo apt upgrade" \
	python="python3" \
	z="zathura" \
	shred="shred -zuvn 5"

# yt-dlp aliases
# alias yt='yt-dlp -o "%(uploader)s-%(title)s.%(ext)s" -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4" --add-metadata -icv'    # Download video link
# alias yta='yt-dlp -o "%(uploader)s-%(title)s.%(ext)s" -xic -f bestaudio/best --add-metadata'  # Download only audio
