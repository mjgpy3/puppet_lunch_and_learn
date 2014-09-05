Facter.add('bash_aliases') do
  setcode do
    text = File.open('/home/USER_NAME/.bashrc', 'r') { |f| f.read }

    text.split("\n").select { |line| line.start_with?('alias') }.join("\n")
  end
end
