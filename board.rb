require_relative 'tile'

class Board
  def self.random_board
    tiles = []
    71.times { tiles << Tile.new }
    10.times { tiles << Tile.new(true) }
    tiles.shuffle!

    Board.new(Array.new(9) { Array.new(9) { tiles.pop } })
  end

  def initialize(grid)
    @grid = grid
  end


end