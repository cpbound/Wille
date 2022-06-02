class UserMailer < ApplicationMailer
  default from: 'your-email@example.com'


  def invite
    # This will break if the user doesn't exist.
    @user = User.find_by(email: params[:email]) || User.create(email: params[:email], password: "123123")
    @will = params[:will]
    mail(to: @user.email, subject: "Wille - Executor Test")
  end
end
