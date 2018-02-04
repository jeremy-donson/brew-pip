mv Brewfile Brewfile-prior
brew bundle dump

# mv ~/py3-prior.txt ~/py3-prior-old.txt; pip3 freeze > ~/py3-prior.txt; pip3 freeze | grep -vw 'pp' | cut -d '=' -f1 > ~/py3-reqs.txt; pip3 install -r ~/py3-reqs.txt --upgrade
pip3 freeze > py3-prior.txt; pip3 freeze | grep -vw 'pp' | cut -d '=' -f1 > py3-reqs.txt; pip3 install -r py3-reqs.txt --upgrade