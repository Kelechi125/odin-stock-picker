# Takes an array of stock prices, one for each day
# Should return a pair of days representing the best day to buy
# And the best day to sell
# Need to buy before selling

# Pay attention to edge cases like when the lowest day is the last day
# And the highest day is the first day

# Want access to the indices as they represent the days starting at Day 0
# Iterate through the array and compare each element to the one before and after
# Maybe check out the array.max() and array.min() methods


def stock_picker(array)

=begin
  buying_price = 0
  selling_price = 0

  array.each_with_index do |price, day|
     # puts "On Day #{day}, the price is $#{price}."
     if day === 0
      next
     elsif
      
     
  end
=end

  for price in array do
    for price_2 in array do

      if price > price_2
        pair = []
        pair.push(price, price_2)
        difference = price - price_2

        p pair
        p difference
      end
      
    end
  end
  
end

stock_picker([17,3,6,9,15,8,6,1,10])