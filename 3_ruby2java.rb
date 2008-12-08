class JavaClass
  def self.main
    puts "Hello, Java"
  end
end

if $0 == __FILE__
  require 'rubygems'
  require 'ruby2java'
  require 'ruby2ruby'
  require 'yaml'

  puts "\nAST:"
  y ParseTree.new.parse_tree(JavaClass).first

  puts "\nRuby:"
  y Ruby2Ruby.translate(JavaClass)

  puts "\nJava:"
  y Ruby2Java.translate(JavaClass)
end

=begin
[:class,
 :JavaClass,
 [:const, :Object],
 [:defs,
  [:self],
  :main,
  [:scope,
   [:block, [:args], [:fcall, :puts, [:array, [:str, "Hello, Java"]]]]]]]
=end

=begin
public class JavaClass {
  public static void main(String argv[]) {
    return "hello world";
  }
}
=end
