# frozen_string_literal: true

# Напишите функцию, которая имитирует работу светафора
# a) на вход она получает один из цветов в виде строки (‘red’, ‘green’, ‘yellow’ ), на выходе
# будет результат (идти, стоять или ждать)
# b) напишите это в виде консольной программы, которая не прекращает работу после
# однократного вызова, а ждет следующих запросов
# c) необязательно, но будет плюсом напишите обработку некорректных данных и
# добавьте возможность юзеру завершить работу программы

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
