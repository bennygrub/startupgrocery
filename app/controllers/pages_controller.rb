class PagesController < ApplicationController
  def home
    @products = Product.where("publish_at < ?", Time.now)
    @product_weeks = @products.group_by { |t| t.publish_at.beginning_of_week }
    @subscriber = Subscriber.new
    @wide = true
  end

  def contact
    @product_submit = ProductSubmit.new
  end

  def about
  end
end
