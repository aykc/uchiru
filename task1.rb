# frozen_string_literal: true

def max2(arr)
  arr.sort.pop 2
end

def min2(arr)
  arr.sort.reverse.pop 2
end

arr = [1, 2, 12, 34, 35, 6, 0, 34, 122, 124, 789, 999, 33, 54, 763, 893]

p "2 maximum values: #{max2(arr)}"
p "2 minimum values: #{min2(arr)}"
