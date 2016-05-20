class Move

  def execute(state, stdout=$stdout)

    original_location = state.location

    current_location = state.location.dup
    current_direction = state.direction

    case current_direction
      when 'NORTH'
        current_location[:x] = current_location[:x] + 1
      when 'SOUTH'
        current_location[:x] = current_location[:x] - 1
      when 'EAST'
        current_location[:y] = current_location[:y] + 1
      when 'WEST'
        current_location[:y] = current_location[:y] - 1
    end

    state.location = current_location

    if state.falling?
      stdout.puts 'Cannot Move Further - Robot will fail'
      state.location = original_location
      return
    end

  end
end