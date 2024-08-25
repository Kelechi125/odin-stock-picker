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
  max_drop = 0
  buy_day = nil
  sell_day = nil
  potential_buy_day = nil
  max_profit = 0

  array.each_with_index do |price, day|

    next if day == 0

    if price < min_price
      min_price = price
      potential_buy_day = day
    end

    drop = array[day - 1] - price

    if drop > max_drop
      max_drop = drop
      buy_day = potential_buy_day
    end

    profit = price - array[buy_day]

    if profit > max_profit
      max_profit = profit
      sell_day = day
    end
  end
  p [buy_day, sell_day]
end

stock_picker([17,3,6,9,15,8,6,1,10])

stock_picker([25, 27, 8, 9, 12, 5])