def display_board(board)
  puts " #{board[0]}" + " | " + "#{board[1]}" + " | " + "#{board[2]} "
  puts "-----------"
  puts " #{board[3]}" + " | " + "#{board[4]}" + " | " + "#{board[5]} "
  puts "-----------"
  puts " #{board[6]}" + " | " + "#{board[7]}" + " | " + "#{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, players_character = "X")
  board[index] = players_character
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end


def valid_move?(board, index)
  # index = gets.chomp
  if position_taken?(board,index) == false && index.between?(0, 8) == true
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, players_character = "X")
  elsif
    input = gets.strip
  end
  display_board(board)
end
