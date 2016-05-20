desc 'Run Toy Robot Test a'
task :test_a do
  puts "PLACE 0, 0, 'NORTH'"
  state = Place.new(0, 0, 'NORTH').execute
  unless state.nil?
    puts 'MOVE'
    Move.new.execute(state)
    puts 'REPORT'
    Report.new.execute(state)
  end
end

desc 'Run Toy Robot Test b'
task :test_b do
  puts "PLACE 0, 0, 'NORTH'"
  state = Place.new(0, 0, 'NORTH').execute
  unless state.nil?
    puts 'LEFT'
    ChangeDirection.new.turn(:left, state)
    puts 'REPORT'
    Report.new.execute(state)
  end
end

desc 'Run Toy Robot Test c'
task :test_c do
  puts "PLACE 1, 2, 'EAST'"
  state = Place.new(1, 2, 'EAST').execute
  unless state.nil?
    puts 'MOVE'
    Move.new.execute(state)
    puts 'MOVE'
    Move.new.execute(state)
    puts 'LEFT'
    ChangeDirection.new.turn(:left, state)
    puts 'MOVE'
    Move.new.execute(state)
    puts 'REPORT'
    Report.new.execute(state)
  end
end
