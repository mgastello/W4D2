require_relative 'piece.rb'

class NullPiece < Piece
    include Singleton
    def initialize
        @color = 'null piece'
    end
end