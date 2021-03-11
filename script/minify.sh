#!/bin/sh

# installing needed packages
pip install css-html-js-minify

# placing minifier in path
sudo cp minifier.py /usr/local/bin
sudo mv /usr/local/bin/minifier.py /usr/local/bin/minifier

# making executable
sudo chmod +x /usr/local/bin/minifier

# exporting to path
export PATH=$PATH:/usr/local/bin/minifier

echo $1
echo $2

git config --global user.name "amireshoon"

mkdir github && cd github
git clone git@github.com:$2.git workspace
cd workspace
ls
# echo $2