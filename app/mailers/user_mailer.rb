class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #

  def invite
    # This will break if the user doesn't exist.
    @user = User.find_by(email: params[:email]) || User.create(email: params[:email], password: "123123")
    @will = params[:will]
    mail(to: @user.email, subject: "Wille - Executor Test")
  end
end
