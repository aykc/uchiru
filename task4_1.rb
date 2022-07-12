# frozen_string_literal: true

def cel2fahr(value)
  t = value[/^\d+(\.\d+)?$/]
  return if t.nil?

  t.to_f * 1.8 + 32
end

input = nil
loop do
  p 'Enter Celcius temperature or \'exit\' to quit: '
  input = gets.chomp
  break if input == 'exit'

  t = cel2fahr(input)
  p t.nil? ? 'Please enter a valid number!' : "#{input} C = #{t} F"
  print "\n"
end
