$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "amd/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "amd"
  s.version     = AMD::VERSION
  s.authors     = ["Sameer Rahmani"]
  s.email       = ["lxsameer@gnu.org"]
  s.homepage    = "https://github.com/Yellowen/amd"
  s.summary     = "Async module definition for rails assets pipeline. It's simple, fast and can be used with assets pipeline manifest structure."
  s.description = "AMD allows you to load js code in async fashion and base on your controller action."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir['test/**/*']
  s.require_paths = ['lib']
  s.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $0 =~ /gem\z/

  s.add_dependency 'rails'
  s.add_dependency 'coffee-rails'

end
