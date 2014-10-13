class Notifier < ActionMailer::Base
  def welcome(user, grants)
     recipients "sales@extendacloud.com"
     from       "no-reply@extendacloud.com"
     subject    "New Web Message"
     body       (:user => user, :grants => grants, :url_base => 'http://locathost:3000/grants/show')
  end
end