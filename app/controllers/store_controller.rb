class StoreController < ApplicationController
  def index
  	@products = Product.all 
  end
  def add_to_cart

		product = Product.find(params[:id])
		@cart = find_cart
		@cart.add_product(product)
		redirect_to(:action => 'display_cart')
	end

end
