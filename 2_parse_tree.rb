class Book
  def title
    "Ruby programming"
  end
end

if $0 == __FILE__
  require 'rubygems'
  require 'ruby2ruby'
  require 'parse_tree'
  require 'yaml'
  
  puts "\nAST:"
  y ParseTree.translate(Book)

  puts "\Ruby:"
  y Ruby2Ruby.translate(Book)
end
