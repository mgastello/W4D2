module Slidable
    HORIZONTAL_DIRS = [
        [-1,0],
        [1,0],
        [0,1],
        [0,-1]
].freeze

    DIAGONAL_DIRS = [
        [1,1],
        [-1,1],
        [-1,-1],
        [1,-1]
].freeze

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves(start_pos)
        move_dirs = []
        x, y = start_pos
        horizontal_dirs.each do |dir|
            (1..7).to_a.each do |num|
                a, b = dir
                a *= num
                b *= num
                x += a
                y += b
                if -1 < x < 8 && -1 < y < 8
                    move_dirs << [x, y]
                end
            end
        end

        move_dirs
    end
end