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
  s.summary     = "TODO: Summary of Amd."
  s.description = "TODO: Description of Amd."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0.0.beta3", "< 5.1"

  s.add_development_dependency "sqlite3"
end
