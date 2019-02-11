class ShippingsController < ApplicationController
  def index
  	@shipping = Shipping.new
  end

  def create
  end

  def destroy
  end
end
