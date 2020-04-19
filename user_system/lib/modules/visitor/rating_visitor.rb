class RatingVisitor < Visitor

  def visit_item_component component, args
    return component.item_details(args)
  end

  def visit_user_component component, args
    return component.user_details(args)
  end

end
