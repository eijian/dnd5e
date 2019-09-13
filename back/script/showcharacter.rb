#!/usr/bin/ruby
#
# showcharacter.rb <char file(YAML)>
#

require 'yaml'

USAGE = 'Usage: showcharacter.rb < char file(YAML)>'

def abnormal_end
  STDERR.puts USAGE
  exit 1
end

def init
  if ARGV.size != 1
    abnormal_end
  end

  charfile = ARGV.shift
  if File.exist?(charfile) == false
    abnormal_end
  end

  charfile
end

def load_char(charfile)
  char0 = YAML.load_file(charfile)
  puts "YAML:#{char0}"
end

def main
  charfile = init
  load_char(charfile)
end

main


