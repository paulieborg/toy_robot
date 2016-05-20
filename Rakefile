load 'spec/tests/tasks.rb'

require 'rspec/core/rake_task'
require_relative 'spec/spec_helper.rb'

Dir["#{File.dirname(__FILE__)}/lib/*.rb"].each { |file| require_relative file }

desc 'Run Spec Tests'
RSpec::Core::RakeTask.new(:spec) do |task|
  task.pattern = 'spec/**/*_spec.rb'
end

task :default => [:spec]
