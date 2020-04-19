class UserComponent < Component

  def accept visitor, args
    return visitor.visit_user_component( self, args )
  end

  def user_details data
    data.each do |r|
      r["user"] = User.find(r["user_id"]).as_json(only: [:username, :firstname, :lastname])
    end

    Rails.logger.warn(data)
    return data
  end

end
