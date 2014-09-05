#!/bin/bash --login

rvm use ruby-1.8.7-p374

sed -i "s/USER_NAME/`whoami`/g" ./manifests/site.pp
sed -i "s/USER_NAME/`whoami`/g" ./modules/custom_fact/lib/facter/bash_aliases.rb

puppet apply manifests/site.pp --modulepath=./modules/
