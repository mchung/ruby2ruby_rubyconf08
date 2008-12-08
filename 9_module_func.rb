module HelperModule
  def help
    puts "Helping me"
  end
  module_function :help
end

if $0 == __FILE__
  require 'rubygems'
  require 'ruby2ruby'
  require 'parse_tree'
  require 'yaml'
  
  puts "\nAST:"
  y ParseTree.new.parse_tree(HelperModule).first
  
  puts "\nRuby:"
  y Ruby2Ruby.translate(HelperModule)
end
