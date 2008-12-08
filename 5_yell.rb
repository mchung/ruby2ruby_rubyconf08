class Yell
  define_method(:yell) do |word|
     word.upcase!
  end
end

if $0 == __FILE__
  require 'rubygems'
  require 'ruby2ruby'
  require 'yaml'

  y Ruby2Ruby.translate(Yell)
end
