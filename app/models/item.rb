class Item < ActiveRecord::Base
  scope :price_bracket, lambda { |lower, upper| where('price <= ? AND price >= ?',upper, lower).order('price') }
  scope :less_than, lambda { |upper| where('price <= ?', upper).order('price') }
end
