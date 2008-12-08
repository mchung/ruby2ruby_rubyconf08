module SkillFly
   def power
      puts "Up, up, and away"
   end
end

module SkillSmash
   def power
      puts "Hulk, smash"
   end
end

class Superman
   include SkillSmash
   include SkillFly
end

class Hulk
   include SkillFly
   include SkillSmash
end

if $0 == __FILE__
  require 'rubygems'
  require 'ruby2ruby'

  puts Ruby2Ruby.translate(Superman)
  Superman.new.power

  puts "=="

  puts Ruby2Ruby.translate(Hulk)
  Hulk.new.power
end
