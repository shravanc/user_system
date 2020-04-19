class Visitor
  def visit_user_component
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def visit_item_component
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

end
