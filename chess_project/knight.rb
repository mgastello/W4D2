require_relative 'piece'
require_relative 'stepable'

class Knight < Piece
    include stepable

    def symbol
        '♞'.colorize(color)
    end
end