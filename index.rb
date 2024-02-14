def stock_picker(arr)
    max_sell_price = 0
    day_to_sell = 0
    best_buy_price = 0
    day_to_buy = 0
    largest_diff = 0

    arr.each_with_index do |stock_price, index|
        #p "#{index}: #{stock_price}"
        
        for i in (index+1)..(arr.length-1)
            if (arr[i] - stock_price) > largest_diff
                largest_diff = arr[i] - stock_price
                best_buy_price = stock_price
                max_sell_price = arr[i]
                day_to_buy = index
                day_to_sell = i
            end
        end
    end


    p [day_to_buy, day_to_sell]
    p "The best day to buy is on Day #{day_to_buy} at $#{best_buy_price}. And, the best day to sell is on Day #{day_to_sell} at $#{max_sell_price}. The profit is $#{max_sell_price - best_buy_price}."
end

stock_picker([17,3,6,9,15,8,6,1,10])