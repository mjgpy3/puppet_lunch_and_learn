#!/bin/bash --login

rvm use ruby-1.8.7-p374

puppet apply manifests/site.pp --modulepath=./modules/
