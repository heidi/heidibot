# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = 'heidibot'
  gem.version       = '0.0.1'
  gem.authors       = ['heidi']
  gem.email         = ['heidi@apartmentlist.com']
  gem.description   = %q{It's a long way from Skynet}
  gem.summary       = %q{Plays roshambo}
  gem.homepage      = ''

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end

