require_relative 'state.rb'

class Place

  def initialize(coordinate_x, coordinate_y, direction, stdout=$stdout)
    @coordinate_x = coordinate_x
    @coordinate_y = coordinate_y
    @direction = direction
    @stdout = stdout
  end

  def execute
    state = State.new(@coordinate_x, @coordinate_y, @direction)
    if state.falling?
      @stdout.puts 'You cannot place the robot outside 5x5 dimensions (start at 0)'
    else
      state
    end
  end
end
