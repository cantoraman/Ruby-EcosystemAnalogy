class Bear
  attr_reader :name
  attr_accessor :stomach

  def initialize (name)
    @name = name
    @stomach = []
  end




def catch_fish(river, amount)
    caught_fish = river.give_fish(amount)
    @stomach.concat(caught_fish)
end

def roar
  puts "ROAAAR!!!"
end

def food_count
  return @stomach.length
end

end
