Given(/^I am on the inventory manager page$/) do
	visit '/inventory/manage'
end



When(/^I register "(.*?)" (\d+) (\d+)$/) do |pruduct, value, quantiy|
	product = Product.new(product, value, quantity)
	product.save	
end

Then(/^I should see "(.*?)"$/) do |content|
  pending # express the regexp above with the code you wish you had
end
