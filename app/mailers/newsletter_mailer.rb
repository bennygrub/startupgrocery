class NewsletterMailer < ApplicationMailer
  default from: "hello@startupgrocery.com <Startup Grocery Weekly>"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.weekly.subject
  #
  def weekly(id)
    @products = Product.where("publish_at > ?", Time.now - 7.days)
    @subscriber = Subscriber.find(id)
    if @products.count > 1
      mail to: "#{@subscriber.email}", subject: "#{@products.first.name}, #{@products.last.name} and more...", from: 'hello@startupgrocery.com'
    end
  end
end
