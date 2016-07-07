#!/usr/bin/env ruby

class Board
  def initialize
    setup
  end

  def setup
    @board = {}
    ('a'..'e').each do |letter|
      (1..5).each do |number|
        @board["#{letter}#{number}"] = "empty"
      end
    end
  end

  def at(x,y)
    piece = @board["#{x}#{y}"]
    unless piece
      raise IndexError
    else
      piece
    end
  end
end

board = Board.new

array = [
 [nil, nil, nil],
 [nil, nil, nil],
 [nil, nil, nil]
]

hash = {
  [0,0] => nil,
  [0,1] => nil,
  [0,2] => nil,
  [1,0] => nil,
  [0,0] => nil,
}

hash[[1,2]] = 5

[1,2].object_id # => 70114028336640
[1,2].object_id # => 70114028335460

hash[[1,2]] # => 5


