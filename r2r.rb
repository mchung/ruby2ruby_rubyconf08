# Somewhere on blog.zenspider.com

require 'rubygems'
require 'ruby2ruby'
require 'parse_tree'
require 'parse_tree_extensions'

class Example
  def example(arg1)
    return "Blah: " + arg1.to_s
  end
end

e = Example.new
puts "\nsexp:"
p e.method(:example).to_sexp

puts "\nRuby:"
p e.method(:example).to_ruby

puts "\nProc"
p e.method(:example)
proc = e.method(:example).to_proc
p proc.call("Happy")

module Demo
  def map(foo)
    return "Demowemo: #{foo}"
  end
end


