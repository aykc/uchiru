# frozen_string_literal: true

# 2) Есть массив
# arr = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]
# a) напишите выражение, которое получает массив всех ключей
# b) напишите выражение, которое получает массив всех значений
# с) напишите выражение, которое получает сумму всех значений

arr = [{ a: 1, b: 2, c: 45 }, { d: 123, c: 12 }, { e: 87 }]

p "All keys: #{arr.flat_map(&:keys).uniq}"

p "All values: #{arr.flat_map(&:values)}"

p "Sum of all values: #{arr.flat_map(&:values).reduce(:+)}"
