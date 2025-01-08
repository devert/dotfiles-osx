# FZF Default Options
export FZF_DEFAULT_OPTS="--prompt='❯ '"
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:-1,fg+:-1,bg:-1,bg+:#373539
  --color=hl:#78dce8,hl+:#ff6188,info:#727072,marker:#fc9867
  --color=prompt:#a9dc76,spinner:#fc9867,pointer:#ff6188,header:#727072
  --color=border:#727072,label:#fcfcfa,query:#fcfcfa
  --info=right
  --height=~40%'

# Homebrew will not auto-update before running `brew install`,`brew upgrade` or `brew tap`.
export HOMEBREW_NO_AUTO_UPDATE=1

# Puppeteer installs will skip Chromium install and use Homebrew installed Chromium
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=`which chromium`
