class PagesController < ApplicationController
  def home
    @products = Product.all
    @product_weeks = @products.group_by { |t| t.updated_at.beginning_of_week }
  end

  def contact
  end

  def about
  end
end
