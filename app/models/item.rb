class Item < ActiveRecord::Base
  scope :price_bracket, lambda { |lower, upper| where('price <= ? AND price >= ?',upper, lower) }
end
