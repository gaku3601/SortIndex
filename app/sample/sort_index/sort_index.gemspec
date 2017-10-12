$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sort_index/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sort_index_table"
  s.version     = SortIndex::VERSION
  s.authors     = ["gaku"]
  s.email       = ["pro.gaku@gmail.com"]
  s.homepage    = "http://www.gakusmemo.com/"
  s.summary     = "sort plugin"
  s.description = "rails sort plugin"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency 'rails', '~> 5.1', '>= 5.1.4'

end
