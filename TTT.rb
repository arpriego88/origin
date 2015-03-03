# Tic Tac Toe

# You have probably heard of this one before.  
# 3 X 3 grid. Three in a row wins. 
# Filling the board is a stalemate.

# Steps
# Build the board (hint: matrix)
# Player chooses a square
# Computer chooses a square
# Display board
# Evaluate if there is a winner (three in a row)
# Break if the board fills

# Bonus
# Keep score / multiple games
# Choose:  2 player or against computer
# Player chooses X or O
@ttt_array = [[1,2,3],
            [4,5,6],
            [7,8,9]]

def board
  @ttt_array.each do |row|
    puts row.map { |col| col}.join(' ')
  end
end
def the_board ()
  puts "Here's is the board."
  board
end

def player_choice
  puts "Choose your piece. 1. for X's or 2. for O's"
  answer = gets.chomp.to_i
  if answer == 1
    puts "Ok your piece is X's and the computer will be O's"
  else
    puts "Ok your piece is O's and the computer will be X's "
  end
end
  
#Answers are not working.... help!?
def player_turn
  the_board
  puts "Where will your first move be?"
  first_move = gets.chomp.to_i
  if first_move == 1
    board[0][0] = 'X'
    board
  end
end

def start_game
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "Welcome to Tic Tac Toe."
  puts "Press 1 to play."
  puts "Press 2 for current score."
  puts "Press 3 to reset score."
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  play = gets.chomp.to_i
  if play == 1
    player_choice
  end
end


start_game
player_turn

  