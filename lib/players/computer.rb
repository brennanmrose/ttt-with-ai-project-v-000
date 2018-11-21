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
    
    def move(board)
      valid_moves = Array.new
      board.cells.each_with_index do |position, index|
        if position == " "
          valid_moves << (index+1).to_s
        end
      end
      
      valid_moves.sample
    end  
  end 
end


# AI strategy: 
# Win: If you have two in a row, play the third to get three in a row.
# Block: If the opponent has two in a row, play the third to block them.
# Fork: Create an opportunity where you can win in two ways.
# Center: Play the center.
# Opposite Corner: If the opponent is in the corner, play the opposite corner.
# Empty Corner: Play an empty corner.
# Empty Side: Play an empty side.