class NewsletterMailer < ApplicationMailer
  default from: "Startup Grocery Weekly <hello@startupgrocery.com>"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.weekly.subject
  #
  def weekly(email)
    @products = Product.where("publish_at < ?", Time.now - 7.days)
    @email = email

    mail to: "#{@email}", subject: "#{@products.first.name}, #{@products.last.name} and more...", from: 'hello@startupgrocery.com'
  end
end
