require_relative 'piece.rb'
require_relative 'null_piece.rb'
require "byebug"

class Board
    def initialize
        @grid = Array.new(8) { Array.new(8)}   # insert null piece
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

    def [](start_pos)
        debugger
        x, y = start_pos
        @grid[x][y].pos
    end

    def []=(start_pos, end_pos)
        x, y = start_pos
        a, b = end_pos
        @grid[x][y] = @grid[a][b]
    end

    def move_piece(start_pos, end_pos)
        raise "invalid starting or ending position" if @grid[start_pos].nil? || @grid[end_pos].color != @grid[start_pos].color
        @grid[start_pos].pos = end_pos
        @grid[start_pos] = end_pos


    end
end

