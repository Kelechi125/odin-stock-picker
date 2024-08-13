# Takes an array of stock prices, one for each day
# Should return a pair of days representing the best day to buy
# And the best day to sell
# Need to buy before selling

# Want access to the indices as they represent the days starting at Day 0
# Iterate through the array and compare each element to the one before and after


def stock_picker(array)
  array.each_with_index do |price, day|
    puts "On Day #{day}, the price is $#{price}."
  end
  
end

stock_picker([17,3,6,9,15,8,6,1,10])