module SideQuestHelper
  module Helper
    extend ActiveSupport::Concern

    included do
      class_attribute :side_quest_definition
    end

    module ClassMethods
      def define_side_quest(name, options = {})
        self.side_quest_definition = SideQuestHelper::SideQuestDefinition.new(name, options)
        before_filter :load_side_quest
      end
    end

    private

    def load_side_quest
      @side_quest = SideQuestHelper::SideQuest.new(side_quest_definition, self)
    end

    def accept_side_quest
      @side_quest.accept
    end

    def complete_side_quest
      redirect_to @side_quest.complete
    end

  end
end