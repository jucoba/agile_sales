Feature: Inventorty management

As manager
I want to register my inventory items
So that I can see how many items of each kind I have

Scenario Outline: Adding an item

Given I am on the inventory manager page
When I register "<product>" <price> <quantity>
Then I should see "<result>"

Examples:
	|product|price|quantity|result|
	|Dish Washer|35000|4|Dish Washer|
	|Multi Usos|33000|3|Multi Usos|


Scenario: Remove an item

Given I am on the inventory manager page
When I register "Jabon de manos" 3 4 
When I remove "Jabon de manos" 
Then I should not see "Jabon de manos"
