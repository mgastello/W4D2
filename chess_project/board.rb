require_relative 'piece.rb'
require_relative 'null_piece.rb'
require_relative 'slidable.rb'
require "byebug"

class Board
    include Slidable

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
        x, y = start_pos
        @grid[x][y]
    end

    def []=(start_pos, value)
        x, y = start_pos
        @grid[x][y] = value
    end

    def move_piece(start_pos, end_pos)
        raise "invalid starting or ending position" if self[start_pos].nil? || !self[end_pos].nil?
        # if !self[start_pos].nil? 
        #     if self[end_pos].nil? && self[start_pos].color != self[end_pos].color
        #         raise "invalid starting or ending position"
        #     end
        # end
        # debugger
        self[start_pos].pos = end_pos
        # self[start_pos] = end_pos
        self[end_pos] = self[start_pos]
        self[start_pos] = nil
    end
end

