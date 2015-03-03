# carlos_conways_game_of_life.rb

# Tasks:
# 01. Display a Matrix of 10 x 10
# 02. Insert random elements into the Matrix (any single digit) and display it
# 03. Ask if user wants a new random matrix and display if user said yes
# 04. Generate a Matrix of max(30) rows x max(100) columns, based on user input
#     With values only being ' ' and '0'
# 05. Test is cells are alive or not (' ' is dead and '0' is alive)
# 06. Apply Rules of Conways game of life - Part 1
#   Count living cells surrounding each element in matrix
# 07. Apply Rules of Conways game of life - Part 2
#   Create new matrix with rules applied, display it and iterate it for 10 times
#   Rules:
#     Any live cell with fewer than two live neighbours dies, as if caused by under-population.
#     Any live cell with two or three live neighbours lives on to the next generation.
#     Any live cell with more than three live neighbours dies, as if by overcrowding.
#     Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.


# Extra 01. Use n iterations
# Extra 02. Fix menus and presentation
# Extra 03. Let user decide what percentage of board to fill with '0' at the beginning.
# Extra 04. Move classes to files of their own

@board = [[0,0,0,0,0,0,0,1,0,0],
          [0,0,0,0,0,0,0,0,0,0],
          [0,0,0,1,0,0,0,0,0,0],
          [0,0,0,0,0,0,0,0,0,0],
          [0,0,0,0,0,0,1,0,0,0],
          [0,1,0,0,1,0,0,0,0,0],
          [0,0,0,0,0,0,0,0,0,0],
          [0,0,0,0,0,1,0,0,1,0],
          [0,0,0,0,0,0,0,0,0,0],
          [0,0,0,0,0,0,0,0,0,0]
]

def display_board
  @board.each do |row| 
    puts row.map { |col| col }.join(' ')
  end
end

def random_board
  10.times do
    @board[rand(10)][rand(10)] = '1'
  end
end

def play_game
  puts "Do you want to play Conways Game of Life? Y/N? "
  answer = gets.chomp.downcase
  if answer == 'y'
    random_board
  end
  display_board
end

def check_cell(x, y)
  alive_counter = 0
  alive_counter += 1 if @board[x-1][y-1] == 1
  alive_counter += 1 if @board[x-1][y] == 1
  alive_counter += 1 if @board[x-1][y+1] == 1
  alive_counter += 1 if @board[x][y-1] == 1
  alive_counter += 1 if @board[x][y+1] == 1
  
  
end

def check_board
  cells.each do
    alive_count = check_cell(1, 1)
end

# def start_game
#   puts "Do you want to play Conways Game of Life? Y/N? "
#   answer = gets.chomp.downcase
#   if answer == 'y'
#     display_board
