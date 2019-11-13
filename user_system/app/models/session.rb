class Session < ApplicationRecord

  belongs_to :user

  def create params
    user = params[:user]
    status, data = user.validate_credentials( params \
                                  .require(:session) \
                                  .permit( [:username, :password])
                                            )
    unless status
      return [false, data]
    end
    user.sessions << Session.create(session_id: SecureRandom.hex(10))
    data[:session_id] = user.sessions.last.session_id
    [true, data]
  end


end
