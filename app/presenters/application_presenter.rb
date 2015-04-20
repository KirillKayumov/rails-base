class ApplicationPresenter
  def self.wrap(object_or_collection)
    if object_or_collection.respond_to?(:map)
      object_or_collection.map { |item| new(item) }
    else
      new(object_or_collection)
    end
  end
end
