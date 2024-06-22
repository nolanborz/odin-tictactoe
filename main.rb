#tictactoe game for TOP

class Spot
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end
h = Hash.new

array = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

game_hash = {}

array.each_with_index do |item, index| game_hash[item] = Spot.new(index + 1) end

# game_hash.each do |key, index| puts key; puts index end



def value_retriever(hashbrown, input, marker)
  case input
  when 1
    hashbrown['one'].name = marker
  when 2
    hashbrown['two'].name = marker
  when 3
    hashbrown['three'].name = marker
  when 4
    hashbrown['four'].name = marker
  when 5
    hashbrown['five'].name
  when 6
    hashbrown['six'].name = marker
  when 7
    hashbrown['seven'].name = marker
  when 8
    hashbrown['eight'].name = marker
  when 9
    hashbrown['nine'].name = marker
  else
    puts 'not working'
  end
end
win_condition = false
until win_condition == true
  puts "Here is the current board state"
  puts game_hash['one'].name.to_s + game_hash['two'].name.to_s + game_hash['three'].name.to_s
  puts game_hash['four'].name.to_s + game_hash['five'].name.to_s + game_hash['six'].name.to_s
  puts game_hash['seven'].name.to_s + game_hash['eight'].name.to_s + game_hash['nine'].name.to_s

  puts "Please enter in a number from 1-9"
  user_input = gets.to_i
  puts value_retriever(game_hash, user_input)
  if user_input == 5 then win_condition = true end

end




