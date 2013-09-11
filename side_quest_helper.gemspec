$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "side_quest_helper/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "side_quest_helper"
  s.version     = SideQuestHelper::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of SideQuestHelper."
  s.description = "TODO: Description of SideQuestHelper."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.0"

  s.add_development_dependency "sqlite3"
end
