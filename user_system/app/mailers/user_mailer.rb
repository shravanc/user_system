class UserMailer < ApplicationMailer

  def welcome_email params
    @user = params[:user]
    @url = params[:confirmation_url]
    mail(to: @user.email, subject: params[:subject])
  end

  def forgot_password params
    @user = params[:user]
    @url = params[:confirmation_url]
    mail(to: @user.email, subject: params[:subject])
  end


end
