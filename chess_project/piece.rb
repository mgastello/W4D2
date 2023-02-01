require_relative 'board.rb'
require_relative 'null_piece'

class Piece
    attr_accessor :color, :board, :pos
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos

    end
    
end

