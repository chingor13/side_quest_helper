module SideQuestHelper
  SideQuestDefinition = Struct.new(:name, :options) do
    def store
      @store ||= options.fetch(:store) do
        SideQuestHelper.default_store
      end
    end

    def valid_referers
      @valid_referers ||= options.fetch(:valid_referers) do
        [/.*/] # default to anything
      end
    end

    def default_url
      @default_url ||= options.fetch(:default_url, "/")
    end
  end
end