class ProductsController < ApplicationController
	def index
		@products = Product.all
		@product = Product.new	
		@result = ""		
	end

	def create
		@product = Product.new (params[:product] )
		if @product.save
			@result = "ok"
		else
			@result = "fail"
		end
		redirect_to products_path
	end
end
