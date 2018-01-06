
def stock_picker(prices)
  days = []
  largest_diff = nil
  prices.each_with_index do |price1, index1|
    prices.slice(index1 + 1..-1).each_with_index do |price2, index2|
      diff = price2 - price1
      largest_diff = diff unless largest_diff
      if diff > largest_diff
        largest_diff = diff
        days = [index1, index1 + 1 + index2]
      end
    end
  end
  days
end

puts stock_picker([17,3,6,9,15,8,6,1,10]).inspect
