module SideQuestHelper
  class SideQuest

    attr_reader :controller, :definition
    delegate :request, to: :controller
    delegate :default_url, :name, :store, :valid_referers, to: :definition

    def initialize(controller, definition)
      @controller = controller
      @definition = definition
      @store = definition.store.new(controller)
    end

    def accept
      referer = request.env["HTTP_REFERER"]
      @store.set(name, referer) if valid_referers.any? {|regex| regex.match(referer) }
    end

    def abandon
      @store.delete(name)
    end

    def complete
      url = @store.delete(name)
      url ||= default_url
      url = url.call(controller) if url.respond_to?(:call)
      url
    end
  end
end