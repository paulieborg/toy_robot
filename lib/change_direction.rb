class ChangeDirection

  def turn(direction, state)

    current_direction = state.direction

    directions = %w(NORTH EAST SOUTH WEST)

    case direction
      when :left
        new_index = directions.index(current_direction)-1
        new_index = 3 if new_index == -1
      when :right
        new_index = directions.index(current_direction)+1
        new_index = 0 if new_index == 4
    end

    state.direction = directions[new_index]
  end
end
