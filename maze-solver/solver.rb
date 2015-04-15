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
  return nil if maze.nil?
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
  return nil if maze.nil?
  row, col = location_finder(maze)
  row += row_shift
  col += col_shift

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

def solver(maze, counter=0)
  puts counter
  solver(move(1,0,maze), counter+1) ||
  solver(move(-1,0,maze), counter+1) ||
  solver(move(0,1,maze), counter+1) ||
  solver(move(0,-1,maze), counter+1)

end

solver(maze)

