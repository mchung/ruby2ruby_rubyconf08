hello_world = proc {
  return "Hello, World";
}

if $0 == __FILE__
  require 'rubygems'
  require 'ruby2ruby'
  require 'parse_tree'
  require 'parse_tree_extensions'
  puts eval(hello_world.to_ruby).call
end

