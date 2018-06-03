# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  board.each do |combo|
    if combo[0] == "X" && combo[1] == "X" && combo[2] == "X" 
      true 
    elsif combo[0] == "O" && combo[1] == "O" && combo[2] == "O" 
      true  
    else 
      false 
    end
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