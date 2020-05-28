#!/bin/sh -e

echo '#!/bin/sh -ex' 
echo
brew leaves | sed 's/^/brew install /g' 
echo 
brew cask list | sed 's/^/brew cask install /g' 
