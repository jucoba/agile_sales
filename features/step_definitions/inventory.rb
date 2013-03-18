Given(/^I am on the inventory manager page$/) do
	visit '/inventory/manage'
end



When(/^I register "(.*?)" (\d+) (\d+)$/) do |product_name, value, quantity|
	fill_in "product_name", with: product_name
	fill_in "product_value", with: value
	fill_in "product_quantity", with: quantity
	click_button ("Registrar producto")
end

Then(/^I should see "(.*?)"$/) do |content|
	page.should have_content("ok")
end
