require 'rspec/core/rake_task'

namespace :spec do
  RSpec::Core::RakeTask.new(:unit) do |task|
    task.pattern = 'spec/**/*_spec.rb'
  end

end

task spec: 'spec'
task default: 'spec'
