require_relative 'piece'
require_relative 'slideable'

class Bishop < Piece
    include slideable

    def symbol
        '♝'.colorize(color)
    end

    protected

    def move_dirs
        moves_diagonal
    end
end