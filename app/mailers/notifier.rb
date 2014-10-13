class Notifier < ActionMailer::Base
  default from: "no-reply@extendacloud.com",
    return_path: "no-reply@extendacloud.com"

  def welcome_email(user)
    @user = user
    @url = 'http://www.extendacloud.com/contact'
    mail(to: "sales@extendacloud.com", subject: 'Email from ExtendaCloud')
  end
end
