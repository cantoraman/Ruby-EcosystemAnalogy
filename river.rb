class River

attr_reader :name
attr_accessor :school

  def initialize (name)
    @name = name
    @school = []
  end

def take_fish(fish)
  school.push(fish)
end



def give_fish(amount)
  fish_holder = []
  amount.times{fish_holder.push(@school.shift)}
  return fish_holder
end

end
