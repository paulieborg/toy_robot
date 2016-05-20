class Report

  def execute(state, stdout=$stdout)
    current_location = state.location
    current_direction = state.direction
    stdout.puts "Output: #{current_location[:x]},#{current_location[:y]},#{current_direction}"
  end
end