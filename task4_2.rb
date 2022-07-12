# frozen_string_literal: true

def tlights(value)
  lights = { red: 'stop', yellow: 'wait', green: 'go' }
  lights[value.to_sym]
end

input = nil
loop do
  p 'Enter a color of a traffic lights or \'exit\' to quit: '
  input = gets.chomp
  break if input == 'exit'

  c = tlights(input)
  p c.nil? ? 'Please enter a correct color!' : c
  print "\n"
end
