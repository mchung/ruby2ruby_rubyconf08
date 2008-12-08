module Activity
  def running
    "go running"
  end

  def skiing
    "go skiing"
  end
end

class UserR2R
  include Activity

  attr_reader :name

  class_eval {
    def age(msg)
      "42"
    end
  }

  limps = ["left", "right"]
  limps.each do |side|
    class_eval <<-CODE
      def #{side}_arm
          "#{side} arm"
      end
    CODE
  end

  define_method(:yell) do |word|
     word.upcase!
  end

end

if $0 == __FILE__
  require 'rubygems'
  require 'ruby2ruby'
  puts Ruby2Ruby.translate(UserR2R)
end
