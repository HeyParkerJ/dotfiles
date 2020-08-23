alias ll='ls -FGlAhp'
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'

alias cdnotes='cd ~/Documents/notes'
alias fuck='sudo !!'

alias whoson="lsof -i -n -P"
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias help='tldr'
alias cat='bat'
alias cov='open coverage/lcov-report/index.html'

alias batchReset='pm2 delete all && pm2 stop all && rm NyQuashia_S_McNair_7988425129_StudentProfile_201801009.pdf'
alias runbp='npm run build:batch-print && npm run build:batch-print-server'
alias prettyprintjson='pbpaste | python -m json.tool > pbcopy.temp && pbcopy < pbcopy.temp && rm pbcopy.temp'

alias java8='/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home/bin'
