class Report

  def execute(state)
    current_location = state.location
    current_direction = state.direction
    puts "Output: #{current_location[:x]},#{current_location[:y]},#{current_direction}"
  end
end