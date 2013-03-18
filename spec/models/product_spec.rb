require 'spec_helper'

describe Product do
	
	subject { @product }

	before ( :each ) do
		@attr = {name: "Dish Washer", quantity: 4, value:  20000} 
		@product = Product.new(@attr)
	end

	it { should respond_to(:name) }	
	it { should respond_to(:quantity) }	
	it { should respond_to(:value) }	
	
	describe "Create products" do
	

		it "Must create a dish washer that cost 20000 with 4 units on stock" do	
			@product.save
			@product.quantity.should == 4
		end
	end	
end
