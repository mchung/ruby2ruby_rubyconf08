class MarshalProcTest
  attr_accessor :block
  def initialize
    @block = proc { "hello world" }
  end
end

class MarshalProcWithRuby2RubyTest
  attr_accessor :block
  def initialize
    @block = proc { "hello world" }.to_ruby
  end
end

if $0 == __FILE__
  require 'yaml'
  require 'rubygems'
  require 'ruby2ruby'
  require 'parse_tree'
  require 'parse_tree_extensions'

  @m = MarshalProcTest.new
  y @m
  y @m.to_yaml
  # pp Marshal.dump(@m) # fails

  @r = MarshalProcWithRuby2RubyTest.new
  y @r
  y @r.to_yaml
  y Marshal.dump(@r)
end

