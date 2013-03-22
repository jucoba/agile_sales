Given(/^I am on the inventory manager page$/) do
	visit '/products'
end



When(/^I register "(.*?)" (\d+) (\d+)$/) do |product_name, value, quantity|
	fill_in "product_name", with: product_name
	fill_in "product_value", with: value
	fill_in "product_quantity", with: quantity
	click_button ("Registrar producto")
end

Then(/^I should see "(.*?)"$/) do |content|
	page.should have_content(content)
end

When(/^I remove "(.*?)"$/) do |product_name|
	product = Product.find_by_name(product_name)
	click_link("delete_#{product.id}")
end

Then(/^I should not see "(.*?)"$/) do |product_name|
	page.should_not have_content(product_name)
end
