# frozen_string_literal: true

# 4) Напишите функцию
# a) которая переводит градусы по Цельсию в градусы по Фаренгейту (формулу нужно
# найти в интернете)
# b) напишите консольную программу, которая просит юзера ввести число (градусы по
# Цельсию) и переводит его в Фаренгейты
# с) необязательно, но будет плюсом Напишите обработку ошибок, если юзер ввел
# неправильные данные (программа должна просить ввести число заново и сообщать об
# ошибке, но не прерываться)

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
