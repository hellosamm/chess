class Board
  def initialize
    @board = Array.new(8) {Array.new(8) {[]}}

    # @board.each_with_index do |row, i|
    #   row.each_with_index do |_, j|
    #     @board[i][j] = "#{i},#{j}"
    #   end
    # end
  end

  def display_board
    @board.each do |row|
      puts row.inspect
    end
  end

end

knight_t = Board.new
knight_t.display_board