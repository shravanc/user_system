class UserMailer < ApplicationMailer

  def welcome_email params
    p params
    p "-----------------"
    @user = params[:user]
    p @user.email
    p "-----------------"
    @url = params[:confirmation_url]
    mail(to: @user.email, subject: params[:subject])
  end

  def forgot_password params
    @user = params[:user]
    @url = params[:confirmation_url]
    mail(to: @user.email, subject: params[:subject])
  end


end
