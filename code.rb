

module PartyGoer

  def initialize
    @count = 0
  end

  def drink
    flag = true
    @count+=1
    if @count > 3
      flag = false
    end
    flag
  end

  def sing
    "oooohhhh say can you see🎼..."
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end

  # def self.included(base)
  #   base.extend(ClassMethods)
  # end
  # 
  # module ClassMethods
    def invited?
      true
    end
end

class Launcher
  extend PartyGoer
end

class PersonalizedHavocError < StandardError;end
