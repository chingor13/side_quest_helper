module SideQuestHelper
  mattr_accessor :default_store

  class Railtie < ::Rails::Railtie
    config.side_quest_helper = ActiveSupport::OrderedOptions.new
    config.side_quest_helper.default_store = :session_store

    initializer "side_quest_helper" do |app|
      ActiveSupport.on_load(:action_controller) do
        include SideQuestHelper::Helper
      end

      default_store = app.config.side_quest_helper.default_store
      unless default_store.is_a?(Class)
        default_store = default_store.to_s.camelize
        default_store = SideQuestHelper::Store.get_const(default_store) rescue default_store.constantize
      end
      SideQuestHelper.default_store = default_store
    end

  end
end