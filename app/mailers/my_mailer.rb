class MyMailer < ActionMailer::Base
  default from: 'thitanan@thitanan.com'
  # def message
  #   mail(
  #     :subject => 'Hello from Postmark',
  #     :to  => 'gbml@mail.ru',
  #     :html_body => '<strong>Hello</strong> dear Postmark user.',
  #     :track_opens => 'true')
  # end

  def welcome_email(user)
    @user = user
    @url = 'http://thitanan.com/login'
    mail(
      to: @user.email, subject: 'Welcome to My Awesome Blog'
      )
  end

end
