class Board
    def initialize
        @grid = Array.new(8) { Array.new(8) }   # insert null piece
        (0..7).to_a.each do |idx1|
            (0..7).to_a.each do |idx2|
                if (2..5).include?(idx1)
                    if (idx1 + idx2).even?
                        @grid[idx1][idx2] = Piece.new(black, self, [idx1, idx2])
                    else
                        @grid[idx1][idx2] = Piece.new(white, self, [idx1, idx2])
                    end
                else
                    
                end
            end
        end
    end

    def move_piece(start_pos, end_pos)
        
    end
end

