# encoding: utf-8
# Тест на общительность

require_relative 'lib/test'
require_relative 'lib/test_data'
require_relative 'lib/result_printer'

name = ARGV[0]
name = name.encode("UTF-8") if Gem.win_platform? && ARGV[0]
name = "Таинственная персона" if name.nil?
puts "Привет #{name} давайте ответим на несколько вопросов"

test_data = TestData.new
test = Test.new(test_data)
test.ask_question until test_data.finished?

result = ResultPrinter.new
puts "\n #{name} вы набрали #{test.points} баллов "
puts result.result_print(test)
