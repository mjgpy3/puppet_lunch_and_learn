
# Enough! What do facts look like?

## 2 parts:
  - `Facter.add(:my_facts_name) do ... end`
  - `setcode do ... end`

## Example:

    require 'facter'

    Facter.add(:system_role) do
      setcode 'cat /etc/system_role'
    end

## Referenced in Puppet:

    if $::system_role == '...' {
      ...
    }
