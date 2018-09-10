HOSTNAME=$( hostname -f | cut -d'.' -f1)

cd ~/projects/brew-pip/

mv Brewfile Brewfile-prior
brew bundle dump

# mv ~/py3-prior.txt ~/py3-prior-old.txt; pip3 freeze > ~/py3-prior.txt; pip3 freeze | grep -vw 'pp' | cut -d '=' -f1 > ~/py3-reqs.txt; pip3 install -r ~/py3-reqs.txt --upgrade
pip3 freeze > py3-prior-versions.txt; pip3 freeze | grep -vw 'pp' | cut -d '=' -f1 > py3-reqs.txt; pip3 install -r py3-reqs.txt --upgrade

mkdir -p merge

curl https://gist.githubusercontent.com/xuhdev/8b1b16fb802f6870729038ce3789568f/raw/85d70be669bf3662d0b8ea29848258fb0392d99f/homebrew-install-gnu.sh | bash
