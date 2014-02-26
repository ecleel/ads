$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ads/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ads"
  s.version     = Ads::VERSION
  s.authors     = ["Abdulaziz AlShetwi"]
  s.email       = ["aalshetwi@gmail.com"]
  s.homepage    = "http://ecleel.com"
  s.summary     = "Ads Engine for Rails App."
  s.description = "Easy way to create Ads banner in you site and create Ads campaign and track clicks."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"
  
  s.add_development_dependency 'jquery-rails'
  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'devise', '~> 3.2.2'
end
