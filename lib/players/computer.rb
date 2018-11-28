# module Players 
#   class Computer < Player 
    
#     def move(board)
#       valid_moves = Array.new
#       board.cells.each_with_index do |position, index|
#         if position == " "
#           valid_moves << (index+1).to_s
#         end
#       end
#       valid_moves.sample
#     end  
#   end 
# end

module Players 
  class Computer < Player 
    
    WIN_COMBINATIONS = [
      [0,1,2], 
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [2,4,6]
    ]
    
    def move(board)
      valid_moves = Array.new
      board.cells.each_with_index do |position, index|
        if position == " "
          valid_moves << (index+1).to_s
        end
      end
      binding.pry
      # valid_moves.map do |valid_move|
      # if WIN_COMBINATIONS.any?{ |combo| @board.cells[combo[0]] == @board.cells[combo[1]] && @board.cells[combo[1]] == @board.cells[combo[2]] }
      valid_moves.map{ |valid| valid.to_i-1 }
    end  
    
    
    
  end 
end


# AI strategy: 
# Win: If you have two in a row, play the third to get three in a row.
# Block: If the opponent has two in a row, play the third to block them.
# Center: Play the center.
# Opposite Corner: If the opponent is in the corner, play the opposite corner.
# Empty Corner: Play an empty corner.
# Empty Side: Play an empty side.