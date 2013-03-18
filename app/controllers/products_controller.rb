class ProductsController < ApplicationController
	def manage
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
		render 'manage'
	end
end
