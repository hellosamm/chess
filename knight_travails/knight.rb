require "set"

def knight_moves(start, goal)
  moves = [[1,2], [2,1], [-1,2], [-2,1], [-1,-2], [-2,-1], [1,-2], [2,-1]]

  queue = [[start]]
  visited = Set.new([start])

  until queue.empty?
    path = queue.shift
    current_square = path.last

    if current_square == goal
      puts "you made it in #{path.length-1} moves. here is your path:"
      path.each { |coord| puts coord.inspect }
      # return path
    end

    moves.each do |move|
      new_square = [current_square[0] + move[0], current_square[1] + move[1]]

      if valid_square?(new_square) && !visited.include?(new_square)
        new_path = path + [new_square]

        queue.push(new_path)
        visited.add(new_square)
      end
    end
  end

  return []
end

def valid_square?(square)
  square[0].between?(0,7) && square[1].between?(0,7)
end

start = [0,0]
goal = [7,7]
result = knight_moves(start, goal)
puts result
