require 'board.rb'

class Piece
    def intitialize(color, board, pos)
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
