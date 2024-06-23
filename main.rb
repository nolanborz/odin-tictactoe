#tictactoe game for TOP

class Spot
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
game_hash = {}

#initialize each game location (1-9)as an instance of Spot
array.each_with_index do |item, index| game_hash[item] = Spot.new(index + 1) end

def value_retriever(hashbrown, input, marker)
  hashbrown[input].name = marker
end

win_condition = false
turn_counter = 1

until win_condition == true
  sign = 'O'
  puts "Here is the current board state"
  puts game_hash[1].name.to_s + game_hash[2].name.to_s + game_hash[3].name.to_s
  puts game_hash[4].name.to_s + game_hash[5].name.to_s + game_hash[6].name.to_s
  puts game_hash[7].name.to_s + game_hash[8].name.to_s + game_hash[9].name.to_s
  puts "Please enter in a number from 1-9"

  user_input = gets.to_i
  turn_counter.even? then sign = 'X' end
  turn_counter + 1
  puts value_retriever(game_hash, user_input, sign)

  if user_input == 5 then win_condition = true end

end




