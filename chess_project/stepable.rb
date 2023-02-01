module Stepable
    STEP_DIRS = [
        [0,1],
        [1,0],
        [-1,0],
        [0,-1],
        [1,1],
        [-1,-1],
        [1,-1],
        [-1,1]
    ].freeze

    KNIGHT_DIRS = [
        [1,2],
        [1,-2],
        [-1,2],
        [-1,-2],
        [2,1],
        [2,-1],
        [-2,1],
        [-2,-1]
    ].freeze

    def step_dirs
        STEP_DIRS
    end

    def knight_dirs
        KNIGHT_DIRS
    end

    def moves_step
        move_dirs = []
        step_dirs.each do |dir|
            dx, dy = dir
            move_dirs += grow_unblocked_moves(dx, dy)
        end
        move_dirs
    end

    def moves_knight
        move_dirs = []
        knight_dirs.each do |dir|
            dx, dy = dir
            move_dirs += grow_unblocked_moves(dx, dy)
        end
        move_dirs
    end

    def grow_unblocked_moves(dx, dy)
        move_dirs = []
        x, y = self.pos
        a, b = dx, dy
        x += a
        y += b
        if (0..7).to_a.include?(x) && (0..7).to_a.include?(y)
            move_dirs << [x, y]
        end

        move_dirs
    end
end