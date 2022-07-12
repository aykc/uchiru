# frozen_string_literal: true

arr = [{ a: 1, b: 2, c: 45 }, { d: 123, c: 12 }, { e: 87 }]

p "All keys: #{arr.flat_map(&:keys).uniq}"

p "All values: #{arr.flat_map(&:values)}"

p "Sum of all values: #{arr.flat_map(&:values).reduce(:+)}"
