class Item < ActiveRecord::Base
  scope :price_bracket, lambda { |lower, upper| where('price <= ? AND price >= ?',upper, lower) }
  scope :less_than, lambda { |upper| where('price <= ?', upper).order('price DESC') }
  def self.array_price arr
      total = 0
      arr.each do |i|
        total += i.price
      end
      total
  end

  def self.price_group lower, upper
    # Find all combinations of items such that the sum of their
    # prices falls within the range of lower and upper
    #
    # For now we will use a brute force method :(

    # Define function to calculate price out of an array of items
    items = Item.less_than(upper).to_a
    # gather all eligible items with a scope and single db call
    results = []

    # fuck ruby man
    index = 0
    while index < items.length
      combo = []
      inner_index = index
      while inner_index < items.length
        current_price = Item.array_price(combo)
        proposed_price = current_price + items[inner_index].price
       # binding.pry
        break if proposed_price > upper || proposed_price < lower
        combo << items[inner_index]
        inner_index += 1
      end
      results << combo unless combo.empty?
      index += 1
    end
    results
  end
end
