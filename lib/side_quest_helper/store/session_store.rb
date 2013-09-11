module SideQuestHelper
  module Store
    class SessionStore < BaseStore
      attr_reader :session

      def initialize(controller)
        super
        @session = controller.session
        session[:side_quest] ||= {}
      end

      def set(name, url)
        session[:side_quest][name.to_sym] = url
      end

      def fetch(name, &block)
        value = session[:side_quest].fetch(name, &block)
      end

      def delete(name)
        session[:side_quest].delete(name)
      end

      def clear
        session[:side_quest] = {}
      end

    end
  end
end