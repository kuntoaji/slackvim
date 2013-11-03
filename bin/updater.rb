#/usr/bin/env ruby

require 'yaml'
require 'open-uri'

root_path = File.expand_path('../..', __FILE__)
config = YAML.load(File.read(root_path + '/config/source.yml'))

config.each do |directory, files|
  path = "#{root_path}/#{directory}"
  puts "Checking directory #{path}...\n"
  FileUtils.mkdir_p(path) unless FileTest.exists?(path)
  sleep 0.5

  files.each do |name, source|
    filename = "#{path}/#{name}.vim"

    File.open(filename, "wb") do |file|
      puts "[+] Updating #{filename} from #{source}"
      open(source, 'rb') do |response|
        file.write(response.read)
        sleep 0.5
      end
    end
  end
end

puts "Done."
