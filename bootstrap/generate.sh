#!/bin/sh

shebang() {
  echo '#!/bin/sh'
  echo
  cat
}

echo brew cask install $(brew cask list) | shebang > install-casks.sh
echo brew install $(brew leaves) | shebang > install-packages.sh
brew tap | sed 's/^/brew tap /g' | shebang > configure-taps.sh