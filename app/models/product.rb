class Product < ActiveRecord::Base
  attr_accessible :name, :quantity, :value

	validates :name, :presence => true
	validates :value, :presence => true

end
