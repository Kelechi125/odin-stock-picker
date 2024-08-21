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

  min_price = array[0]
  max_profit = 0
  buy_day = nil
  sell_day = nil

  array.each_with_index do |price, day|
    if price < min_price
      min_price = price
      buy_day =  day
    end

    min_price
    buy_day

    profit = price - min_price
    
    if profit > max_profit
      max_profit = profit
      sell_day = day
    end

    sell_day

    p [buy_day, sell_day]
  end
=begin
  array.each_with_index do |price, day|
    array.each_with_index do |price_2, day_2|
      if price_2 > price
        profit = price_2 - price

        if profit > max_profit
          max_profit = profit

          buy_day = day
          sell_day = day_2

          p [buy_day, sell_day]
        end
      end
    end
      
     
  end
=end
end

stock_picker([17,3,6,9,15,8,6,1,10])