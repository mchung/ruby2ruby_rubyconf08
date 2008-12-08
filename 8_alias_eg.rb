class AliasClass
  def old_busted
    "42"
  end
  alias_method :new_hotness, :old_busted
end


if $0 == __FILE__
  require 'rubygems'
  require 'ruby2ruby'
  require 'parse_tree'
  require 'yaml'
  
  puts "\nAST:"
  y ParseTree.new.parse_tree(AliasClass).first
  
  puts "\nRuby:"
  y Ruby2Ruby.translate(AliasClass)
end
