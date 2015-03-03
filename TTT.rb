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
@places_on_board = [1,2,3,4,5,6,7,8,9]

def board
  @ttt_array.each do |row|
    puts row.map { |col| col}.join(' ')
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

def choices(choice, token)
  if choice == 1
    @ttt_array[0][0] = token 
  elsif choice == 2
    @ttt_array[0][1] = token 
  elsif choice == 3
    @ttt_array[0][2] = token 
  elsif choice == 4
    @ttt_array[1][0] = token 
  elsif choice == 5
    @ttt_array[1][1] = token 
  elsif choice == 6
    @ttt_array[1][2] = token 
  elsif choice == 7
    @ttt_array[2][0] = token 
  elsif choice == 8
    @ttt_array[2][1] = token 
  elsif choice == 9
    @ttt_array[2][2] = token 
  end
end

def the_board ()
  puts "~~~~~~~~~~~~~~"
  board
end

def player_choice
  puts "Choose your piece. 1 for X's or 2 for O's"
  answer = gets.chomp.to_i
  if answer == 1
    puts "Ok your piece is X's and the computer will be O's"
    @player_token = "X" 
    @computer_token = "O"
  else
    puts "Ok your piece is O's and the computer will be X's "
    @player_token = "O" 
    @computer_token = "X"
  end
end
  
def player_turn
  the_board
  puts "It's your turn."
  choice = gets.chomp.to_i
  choices(choice, @player_token)
  @places_on_board.delete(choice)
  board
  winner
end

def computer_turn
  puts "Ok now it's the computer's turn."
  computers_choice = @places_on_board.sample
  choices(computers_choice, @computer_token)
  @places_on_board.delete(computers_choice)
  board
  computer_winner
end

def winner
  if @ttt_array[0][0] == 'X' && @ttt_array[0][1] == 'X' &&  @ttt_array[0][2] == 'X'
    puts "You win!"
    exit
  elsif @ttt_array[1][0] == 'X' && @ttt_array[1][1] == 'X' &&  @ttt_array[1][2] == 'X'
    puts "You win!"
    exit
  elsif @ttt_array[2][0] == 'X' && @ttt_array[2][1] == 'X' &&  @ttt_array[2][2] == 'X'
    puts "You win!"
    exit
  elsif @ttt_array[0][0] == 'X' && @ttt_array[1][1] == 'X' &&  @ttt_array[2][2] == 'X'
    puts "You win!"
    exit
  elsif @ttt_array[0][2] == 'X' && @ttt_array[1][1] == 'X' &&  @ttt_array[2][0] == 'X'
    puts "You win!"
    exit
  elsif @ttt_array[0][0] == 'X' && @ttt_array[1][0] == 'X' &&  @ttt_array[2][0] == 'X'
    puts "You win!"
    exit
  elsif @ttt_array[0][1] == 'X' && @ttt_array[1][1] == 'X' &&  @ttt_array[2][1] == 'X'
    puts "You win!"
    exit
  elsif @ttt_array[0][2] == 'X' && @ttt_array[1][2] == 'X' &&  @ttt_array[2][2] == 'X'
    puts "You win!"
    exit
  end  
end

def computer_winner
  if @ttt_array[0][0] == 'O' && @ttt_array[0][1] == 'O' &&  @ttt_array[0][2] == 'O'
    puts "You loose!"
    exit
  elsif @ttt_array[1][0] == 'O' && @ttt_array[1][1] == 'O' &&  @ttt_array[1][2] == 'O'
    puts "You loose!"
    exit
  elsif @ttt_array[2][0] == 'O' && @ttt_array[2][1] == 'O' &&  @ttt_array[2][2] == 'O'
    puts "You loose!"
    exit
  elsif @ttt_array[0][0] == 'O' && @ttt_array[1][1] == 'O' &&  @ttt_array[2][2] == 'O'
    puts "You loose!"
    exit
  elsif @ttt_array[0][2] == 'O' && @ttt_array[1][1] == 'O' &&  @ttt_array[2][0] == 'O'
    puts "You loose!"
    exit
  elsif @ttt_array[0][0] == 'O' && @ttt_array[1][0] == 'O' &&  @ttt_array[2][0] == 'O'
    puts "You loose!"
    exit
  elsif @ttt_array[0][1] == 'O' && @ttt_array[1][1] == 'O' &&  @ttt_array[2][1] == 'O'
    puts "You loose!"
    exit
  elsif @ttt_array[0][2] == 'O' && @ttt_array[1][2] == 'O' &&  @ttt_array[2][2] == 'O'
    puts "You loose!"
    exit
  end  
end

# score not working...
# def score
#   player_score == 0
#   computer_score == 0
#   if winner 
#     player_score += 1
#     puts "The score is now player: #{player_score} computer: #{computer_score} "
#   end
# end



start_game
while true
player_turn
computer_turn
end



  