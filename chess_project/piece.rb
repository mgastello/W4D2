require_relative 'board.rb'

module Slidable

end

class Piece
    
    attr_accessor :color, :board, :pos
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos

    end
    
end

class Sliding_Pieces < Piece

end

class Stepping_Pieces < Piece

end

class Null_Pieces < Piece

end

class Pawns < Piece

end
