# Git, config

#git config --global --unset user.name
#git config --global user.name 'NAME'

#git config --global --unset user.email
#git config --global user.email 'EMAIL'

git config --global help.autocorrect 1
git config --global push.default current

git config --global color.status auto
git config --global color.status.added 'green bold'
git config --global color.status.changed 'yellow bold'
git config --global color.status.untracked 'red bold'

git config --global color.branch auto
git config --global color.branch.current 'green bold'
git config --global color.branch.local 'yellow bold'
git config --global color.branch.remote 'blue bold'

git config --global color.diff auto
git config --global color.diff.commit 'blue bold'
git config --global color.diff.frag 'blue bold'
git config --global color.diff.meta 'yellow bold'
git config --global color.diff.old 'red bold'
git config --global color.diff.new 'green bold'
git config --global color.diff.whitespace 'green bold'

# git diff-highlight
cd /usr/share/doc/git/contrib/diff-highlight/
sudo apt-get install -y make && sudo make
sudo ln -f diff-highlight /usr/bin/diff-highlight
cd -

git config --global pager.diff 'diff-highlight | less'
git config --global pager.show 'diff-highlight | less'
git config --global pager.log 'diff-highlight | less'

git config --global color.diff-highlight.oldNormal 'red bold'
git config --global color.diff-highlight.oldHighlight 'red bold'
git config --global color.diff-highlight.newNormal 'green bold'
git config --global color.diff-highlight.newHighlight 'green reverse'

# https://www.gitignore.io
git config --global alias.ignore '!gi() { curl -sL https://www.gitignore.io/api/$@ ;}; gi'
