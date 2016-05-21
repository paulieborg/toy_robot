desc 'Run Toy Robot Test a'
task :test_a do
  Robot.new.input_file(File.read(File.join('input', 'test_a.txt')))
end

desc 'Run Toy Robot Test b'
task :test_b do
  Robot.new.input_file(File.read(File.join('input', 'test_b.txt')))
end

desc 'Run Toy Robot Test c'
task :test_c do
  Robot.new.input_file(File.read(File.join('input', 'test_c.txt')))
end
