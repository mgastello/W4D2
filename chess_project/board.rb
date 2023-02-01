require_relative 'piece.rb'
require_relative 'null_piece.rb'

class Board
    def initialize
        @grid = Array.new(8) { Array.new(8) { NullPiece.instance } }   # insert null piece
        (0..7).to_a.each do |idx1|
            (0..7).to_a.each do |idx2|
                if idx1 < 2
                    @grid[idx1][idx2] = Piece.new("white", self, [idx1, idx2])
                elsif idx1 > 5
                    @grid[idx1][idx2] = Piece.new("black", self, [idx1, idx2])
                end
            end
        end
    end

    def [](pos)
        x, y = pos
        @grid[x][y].pos
    end

    def []=(start_pos, end_pos)
        x, y = start_pos
        @grid[x][y].pos = end_pos
    end

    def move_piece(start_pos, end_pos)
        raise "invalid starting or ending position" if grid[start_pos].nil? || !valid_pos.include?(end_pos)
        @grid[start_pos] = end_pos
    end
end

