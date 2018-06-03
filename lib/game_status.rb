# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" 
      return combo 
    elsif board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O" 
      return combo  
    end
  end 
  return false
end

def full?(board)
  board.each do |spot|
    if spot == " "
      return false 
    end
  end
  return true 
end

def draw?(board)
  if full?(board) && !won?(board)
    return true 
  else
    return false 
  end
end
  
def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true 
  else 
    return false
  end
end

def winner?(board)
  winning_combo = won?(board)
  if winning_combo != nil
    return board[winning_combo[0]]
  else 
    return nil 
  end
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]