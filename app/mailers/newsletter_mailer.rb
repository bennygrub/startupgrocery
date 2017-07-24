class NewsletterMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.weekly.subject
  #
  def weekly
    @greeting = "Hi"

    mail to: "blgruber@gmail.com"
  end
end
