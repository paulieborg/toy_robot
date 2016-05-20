Gem::Specification.new do |s|
  s.name        = 'toy_robot'
  s.version     = '0.1.0'
  s.licenses    = ['MIT']
  s.summary     = 'A Toy Robot Simulator'
  s.description = 'The application is a simulation of a toy robot moving on a square tabletop'
  s.authors     = ['Paul Borg']
  s.email       = 'paulieborg@gmail.com'
  s.files       = ['lib/robot.rb']
  s.homepage    = 'https://github.com/paulieborg/toy_robot'

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.bindir        = 'bin'
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'yard'
  s.add_development_dependency 'rubocop'

end

