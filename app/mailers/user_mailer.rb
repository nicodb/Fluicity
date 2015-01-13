class UserMailer < ActionMailer::Base
  default from: "julie@flui.city"

  def citizen_welcome_email(user)
   send_mail(user)
  end

  def organization_welcome_email(user)
    send_mail(user)
  end

  def rep_welcome_email(user)
    send_mail(user)
  end

  private

  def send_mail(user)
    @user = user
    mail(to: @user.email, subject: 'Bienvenue sur Fluicity')
  end
end
