
# Additional Fact info


## Find existing Facts with

`facter` (`--debug` flag is useful)

## Executable Facts

Programs written in any language that prints... 

    key1=value1
    key2=value2

...to STDOUT


## Override Fact with `FACTER_`

    FACTER_operatingsystem=Debian puppet -e 'notify { "We are running on $operatingsystem": }'


## In Vagrant

Vagrant.configure("2") do |config|
  config.vm.provision "puppet" do |puppet|
    puppet.facter = {
      "vagrant" => "1"
    }
  end
end

