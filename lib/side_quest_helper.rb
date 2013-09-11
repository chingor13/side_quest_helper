require "side_quest_helper/railtie" if defined?(Rails)

module SideQuestHelper
  autoload :Helper, "side_quest_helper/helper"
  autoload :SideQuest, "side_quest_helper/side_quest"
  autoload :SideQuestDefinition, "side_quest_helper/side_quest_definition"
  autoload :Store, "side_quest_helper/store"
end
