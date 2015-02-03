class Yogurt < ActiveRecord::Base

  validates_presence_of :flavor, :topping, :quantity
  validates_numericality_of :quantity, greater_than: 0, less_than_or_equal_to: 12  
  
end
