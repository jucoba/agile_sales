require 'spec_helper'

describe Product do
	
	
	describe "Create products" do
	

		subject { @product }

		before ( :each ) do
			@attr = {name: "Dish Washer", quantity: 4, value:  20000} 
				@product = Product.new(@attr)
			end

		it { should respond_to(:name) }	
		it { should respond_to(:quantity) }	
		it { should respond_to(:value) }	

		it "Must create a dish washer that cost 20000 with 4 units on stock" do	
			@product.save
			@product.quantity.should == 4
			@product.value.should == 20000
			@product.name.should == "Dish Washer"
		end

		it "Must have a name" do
			no_name_product = Product.new( @attr.merge(:name => "") )
			no_name_product.should_not be_valid
		end
		
		it "Must have a value" do
			no_value_product = Product.new( @attr.merge(:value => "") )
			no_value_product.should_not be_valid
		end
	end	
end
