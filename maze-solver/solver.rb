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
    maze[row].each_index do |col|
      if maze[row][col] == 'o'
        return [row, col]
      end
    end
  end
  nil
end

def move(row_shift, col_shift, maze)
  row, col = location_finder(maze)
  row += row_shift
  col += col_shift

  if row >= maze.length
    return nil
  elsif col >= maze[0].length
    return nil
  end

  maze.each { |x| p x }
  p [row_shift, col_shift]

  if maze[row][col] == "*"
    maze.each { |x| p x }
    return "SOLVED"
  elsif maze[row][col] == "."
    maze[row][col] = "o"
    maze[row - row_shift][col - col_shift] = "x"
    return maze
  else
    return nil
  end

end

def solver(maze)
  return nil if maze.nil?
  solver(move(1,0,maze)) ||
  solver(move(-1,0,maze)) ||
  solver(move(0,1,maze)) ||
  solver(move(0,-1,maze))

end

solver(maze)
# p maze.length
