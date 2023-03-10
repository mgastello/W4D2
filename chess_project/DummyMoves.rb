class Dummy
  attr_accessor :pos
  def initialize
    @pos = [3,3]
  end


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


  def moves_horizontal
    move_dirs = []
    HORIZONTAL_DIRS.each do |dir|
        dx, dy = dir
        move_dirs += grow_unblocked_moves(dx, dy)
    end
    move_dirs
  end

  def moves_diagonal
    move_dirs = []
    DIAGONAL_DIRS.each do |dir|
        dx, dy = dir
        move_dirs += grow_unblocked_moves(dx, dy)
    end
    move_dirs
  end

  def grow_unblocked_moves(dx, dy)
    move_dirs = []
      (1..7).to_a.each do |num|
          x, y = self.pos
          a, b = dx, dy
          a *= num
          b *= num
          x += a
          y += b
          # if -1 < x && x < 8 && -1 < y && y < 8
          if (0..7).to_a.include?(x) && (0..7).to_a.include?(y)
            move_dirs << [x, y]
          end
      end
      move_dirs
  end
end