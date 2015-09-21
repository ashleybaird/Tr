class UserMailer < ApplicationMailer
	default from: 'https://serene-savannah-1071.herokuapp.com/'
 
  def welcome_email(user)
    @user = user
    @url  = 'https://serene-savannah-1071.herokuapp.com/'
    mail(to: @user.email, subject: 'Welcome to Travel Finances')
  end
end
