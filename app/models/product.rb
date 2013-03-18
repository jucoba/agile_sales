class Product < ActiveRecord::Base
  attr_accessible :name, :quantity, :value
end
