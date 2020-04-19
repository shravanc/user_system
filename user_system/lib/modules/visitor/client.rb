components = [ UserComponent.new, ItemComponent.new ]

item_visitor = RatingVisitor.new
components.each do |component|
  component.accept(rating_visitor)
end

