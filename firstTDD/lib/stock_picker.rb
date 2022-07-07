def stock_picker(pricearray)
    # returns pair of days
    return nil if pricearray.length <= 1
    buyday = 0
    sellday = 1
    bestprofit = pricearray.min - pricearray.max # this is always initialized
    # to be smaller than the real number
    bestdates = [buyday, sellday]

    while(sellday < pricearray.length)
        profit = pricearray[sellday] - pricearray[buyday]
        if profit > bestprofit
            bestprofit = profit
            bestdates = [buyday, sellday]
        end
        buyday = sellday if pricearray[sellday] < pricearray[sellday - 1]
        sellday += 1
    end
    bestdates
end

# Returns nil if array is of length less than 2
# Identifies correct buy and sell dates if price monotonously increases
p stock_picker([4, 5, 6, 7, 8, 9])

# identifies correct buy and sell dates if price monotonously decreases
p stock_picker([8, 3, 2, 1, -3, -9])

# identifies correct dates for general fluctuating stock prices
p stock_picker([17,3,6,9,15,8,6,1,10])