require_relative 'state.rb'

class Place

  def initialize(coordinate_x, coordinate_y, direction)
    @coordinate_x = coordinate_x
    @coordinate_y = coordinate_y
    @direction = direction
  end

  def execute
    state = State.new(@coordinate_x, @coordinate_y, @direction)
    raise 'You cannot place the robot outside 5x5' if state.falling?
    state
  end
end
