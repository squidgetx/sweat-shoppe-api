class Item < ActiveRecord::Base
  scope :price_bracket, lambda { |lower, upper| where('price <= ? AND price >= ?',upper, lower) }
  scope :less_than, lambda { |upper| where('price <= ?', upper).order('price') }

  def self.price_group lower, upper
    # Find all combinations of items such that the sum of their
    # prices falls within the range of lower and upper
    #
    # For now we will use a brute force method :(

    Item.each do |item1|

    end

  end
end
