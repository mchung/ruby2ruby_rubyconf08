if $0 == __FILE__
  require 'rubygems'
  require 'parse_tree'
  require 'parse_tree_extensions'
  require 'yaml'

  y ParseTree.new.parse_tree_for_string("a b c, d")
end
