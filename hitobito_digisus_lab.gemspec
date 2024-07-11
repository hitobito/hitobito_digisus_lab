$LOAD_PATH.push File.expand_path("lib", __dir__)

# Maintain your wagon's version:
require "hitobito_digisus_lab/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name = "hitobito_digisus_lab"
  s.version = HitobitoDigisusLab::VERSION
  s.authors = ["Pascal Zumkehr"]
  s.email = ["zumkehr@puzzle.ch"]
  s.homepage = "http://hitobito.ch"
  s.summary = "Digisus Lab organization specific features"
  s.description = "Digisus Lab organization specific features"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["Rakefile"]
end
