class State

  attr_accessor :location
  attr_accessor :direction

  def initialize(x_coord, y_coord, direction)
    @location = {
        x: x_coord,
        y: y_coord,
    }
    @direction = direction
  end

  def falling?
    falling = false
    @location.each do |_key, value|
      falling = true unless value.between?(0, 5)
    end
    falling
  end

end