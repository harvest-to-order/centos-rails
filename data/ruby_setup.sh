#!/bin/bash
printf "Installing RVM....\n\n";
printf "....\n";
#sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3;
#\curl -sSL https://get.rvm.io | bash;
#sudo su vagrant;
#type rvm | head -1;
#cd /var;
rvm install ruby-2.1.5;
rvm --default use 2.1.5;
ruby -v;
#rvm use 2.1.5;
gem install rails --version '~> 3.2.0';
bundle config git.allow_insecure true;
bundle config build.pg --with-pg-config=/usr/pgsql-9.3/bin/pg_config;
##install POSTGRES
