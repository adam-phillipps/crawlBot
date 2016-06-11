exit
sudo apt-get update
sudo apt-get upgrade
ls
cat launch_crawler.sh 
ls junk.del 
cat junk.del 
pwd
ls -la /
ls
cat junk.del cat launch_crawler.sh 
lsb_release -a
cat /etc/passwd
man cut
cut -d: -f1 /etc/passwd
ls /etc/init.d/
less /etc/init.d/launch_crawler.sh 
ls
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
ls -la
touch .bash_profile
ls -la
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
cat .bash_profile 
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile 
echo $SHELL
echo $PATH
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile 
exec $SHELL
git clone https://github.com/rbenv/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
rbenv versions
vim ~/.bash_profile 
vim .bashrc 
rm .bash_profile 
ls -la
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL
