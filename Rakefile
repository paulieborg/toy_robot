require 'rspec/core/rake_task'
require_relative 'spec/spec_helper.rb'

RSpec::Core::RakeTask.new(:spec) do |task|
  task.pattern = 'spec/**/*_spec.rb'
end

task :default => [:spec]
