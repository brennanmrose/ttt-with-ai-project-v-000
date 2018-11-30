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
          valid_moves << index
        end
      end
      test_board = board  
      valid_moves.each do |valid_move|
        test_board.update(valid_move+1, self)
        if test_board.won?
          return (valid_move+1).to_s
        end 
      end 
    end  
    
    
    
  end 
end