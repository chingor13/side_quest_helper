module SideQuestHelper
  module Store
    class BaseStore

      def initialize(controller)
        # do something
        @controller = controller
      end

      def set(name, url)
        raise "not implemented"
      end

      def fetch(name, &block)
        raise "not implemented"
      end

      def delete(name)
        raise "not implemented"
      end

      def clear
        raise "not implemented"
      end

    end
  end
end