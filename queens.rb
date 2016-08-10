class Queens
  WHITE_SYMBOL = 'W'
  BLACK_SYMBOL = 'B'
  attr_accessor :white, :black

  def initialize(white: [0, 3], black: [7, 3])
    if white == black
      raise ArgumentError, 'Queens cannot occupy same space!'
    end

    @white = white
    @black = black
  end

  def to_s
    board_str = ''
    count = 0

    while count < board.length
      board_str << board[count].map(&:to_s).join(' ') + "\n"
      count += 1
    end

    board_str.chomp
  end

  def board
    board = [
      ['_', '_', '_', '_', '_', '_', '_', '_'],
      ['_', '_', '_', '_', '_', '_', '_', '_'],
      ['_', '_', '_', '_', '_', '_', '_', '_'],
      ['_', '_', '_', '_', '_', '_', '_', '_'],
      ['_', '_', '_', '_', '_', '_', '_', '_'],
      ['_', '_', '_', '_', '_', '_', '_', '_'],
      ['_', '_', '_', '_', '_', '_', '_', '_'],
      ['_', '_', '_', '_', '_', '_', '_', '_']
    ]

    board[white[0]][white[1]] = WHITE_SYMBOL
    board[black[0]][black[1]] = BLACK_SYMBOL

    board
  end

  def attack?
    # test diagonals
    (white[0] - black[0]).abs == (white[1] - black[1]).abs ||
    # test rows
    white[0] == black[0] ||
    # test columns
    white[1] == black[1]
  end
end
