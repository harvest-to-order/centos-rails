#!/bin/bash
printf "Installing RVM....\n\n";
printf "....\n";
sudo chmod -R 777 /usr/local/;
#sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3;
#\curl -sSL https://get.rvm.io | bash;
#sudo su vagrant;
#type rvm | head -1;
#cd /var;
su -l -c "rvm install ruby-2.1.5" vagrant;
su -l -c "rvm --default use 2.1.5" vagrant;
su -l -c "ruby -v" vagrant;
#rvm use 2.1.5;
su -l -c "gem install rails --version '~> 3.2.0' --no-ri --no-rdoc" vagrant;
su -l -c "bundle config git.allow_insecure true" vagrant;
su -l -c "bundle config build.pg --with-pg-config=/usr/pgsql-9.3/bin/pg_config" vagrant;
##install POSTGRES
