# A small tribute to Guy Decoux, an early Ruby programmer who once walked the 
# Ruby parse tree to answer a simple operator precedence question posed by Matz.

# Read Matz’s question [1] and Guy’s [2] answer.  Today, we can answer the same 
# question with the following code:

# [1] http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/2462
# [2] http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/2464

if $0 == __FILE__
  require 'rubygems'
  require 'parse_tree'
  require 'parse_tree_extensions'
  require 'yaml'

  y ParseTree.new.parse_tree_for_string("a b c, d")
end
