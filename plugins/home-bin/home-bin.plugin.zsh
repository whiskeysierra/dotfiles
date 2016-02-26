# A plugin that adds ~/bin to your PATH

if [ -d ~/bin ]; then
    export PATH=~/bin:$PATH
fi