# Homebrew will not auto-update before running `brew install`,`brew upgrade` or `brew tap`.
export HOMEBREW_NO_AUTO_UPDATE=1

# Puppeteer installs will skip Chromium install and use Homebrew installed Chromium
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=`which chromium`
