lib = File.expand_path('/lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require_relative './lib/base_gem/version'

Gem::Specification.new do |gspec|
  gspec.required_ruby_version = '>= 2.2'
  gspec.name        = 'BaseGem'
  gspec.version     = BaseGem::VERSION
  gspec.date        = '2019-05-30'
  gspec.summary     = 'Base gem summary'
  gspec.description = 'Base gem description'
  gspec.authors     = ['Dinobi Kenkwo']
  gspec.email       = 'dino.kennetcorp@gmail.com'
  gspec.homepage    = 'http://rubygems.org/gems/base_gem'
  gspec.license     = 'MIT'

  gspec.files       = `git ls-files -z`.split("\x0")
  gspec.executables = gspec.files.grep(/^bin\//) { |f| File.basename(f) }
  gspec.test_files  = gspec.files.grep(/^(test|spec|features)\//)
  gspec.require_paths = ['lib']

  gspec.add_development_dependency 'rake',  '~> 12.3'
  gspec.add_development_dependency 'rdoc',  '~> 6.1'
  gspec.add_development_dependency 'rspec', '~> 3.8'
end
