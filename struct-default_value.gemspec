require File.expand_path('../lib/struct/default_value/version', __FILE__)

Gem::Specification.new do |gem|
  # specific

  gem.description   = %q{Struct will have default values for each member.}
  gem.summary       = gem.description.dup
  gem.homepage      = 'http://kachick.github.com/struct-default_value'
  gem.license       = 'MIT'

  gem.name          = 'struct-default_value'
  gem.version       = Struct::Default_Value::VERSION.dup

  gem.add_development_dependency 'test-unit', '>= 3.3.3', '< 4'
  gem.add_development_dependency 'yard', '>= 0.9.20', '< 2'
  gem.add_development_dependency 'rake', '>= 10', '< 20'
  gem.add_development_dependency 'bundler', '>= 2', '< 3'

  if RUBY_ENGINE == 'rbx'
    gem.add_dependency 'rubysl', '~> 2.0'
  end

  # common

  gem.authors       = ['Kenichi Kamiya']
  gem.email         = ['kachick1+ruby@gmail.com']
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end

