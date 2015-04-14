# MAZE
# o#........
# .#####.##.
# .......##.
# ######.#*.
# .......###
# # is a wall
# . is an open tile
# o is your start point
# * is your goal
maze = <<-MAZE
o#........
.#####.##.
.......##.
######.#*.
.......###
MAZE

maze = maze.split("\n").map { |x| x.chars }

def location_finder(maze)
  maze.each_index do |row|
    maze.each_index do |col|
      if maze[row, col] == 'o'
        return [row, col]
    end
  end
end

