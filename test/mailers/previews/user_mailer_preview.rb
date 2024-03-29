# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/welcome
  def welcome
    @user = User.last
    UserMailer.with(user: @user).welcome
  end

  def invite
    @will = Will.last

    UserMailer.with(will: @will, email: params[:email]).invite.deliver_now
  end

end
