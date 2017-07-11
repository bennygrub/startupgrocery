class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :product_submit

  def product_submit 
    @product_submit = ProductSubmit.new
  end
end
