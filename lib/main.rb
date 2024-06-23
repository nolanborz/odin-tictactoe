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

def print_board(game_hash)
  puts game_hash[1].name.to_s + game_hash[2].name.to_s + game_hash[3].name.to_s
  puts game_hash[4].name.to_s + game_hash[5].name.to_s + game_hash[6].name.to_s
  puts game_hash[7].name.to_s + game_hash[8].name.to_s + game_hash[9].name.to_s
end


solution_key = [[1, 2, 3],[4, 5, 6],[7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
def solution_checker(arr, game_hash, sign)
  if game_hash[arr[0]].name == sign && game_hash[arr[1]].name == sign && game_hash[arr[2]].name == sign then return true
  end
end

win_condition = false
turn_counter = 0

until win_condition == true
  
  sign = 'O'
  if turn_counter.even? == true then sign = 'X' end
  turn_counter += 1
  
  puts "Here is the current board state"
  print_board(game_hash)
  puts "It's #{sign}'s turn, please enter a number from 1-9"

  user_input = gets.to_i
  
  puts value_retriever(game_hash, user_input, sign)

  solution_key.each do |i| outcome = solution_checker(i, game_hash, sign); if outcome == true then puts "Tic-tac-toe! Player #{sign} wins!"; win_condition = true end
  end
  if turn_counter == 9 then print_board(game_hash); puts "It's a draw!"; win_condition = true
  end
end