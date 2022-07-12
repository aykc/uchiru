# frozen_string_literal: true

arr = [nil, 2, :foo, 'bar', 'foo', 'apple', 'orange', :orange, 45, nil, :foo, :bar, 25, 45, :apple, 'bar', nil]

result = {}
arr.each do |e|
  result[e] ||= 0
  result[e] += 1
end

p "Key occurancies: #{result}"
