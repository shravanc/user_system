class ItemComponent < Component

  def accept visitor, args
    return visitor.visit_item_component(self, args)
  end

  def item_details data
    data.each do |r|
      r["item"] =  {"title": "Movie title"}
    end

    Rails.logger.warn(data)
    return data
  end

end
