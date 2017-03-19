# encoding: utf-8
# social_test.rb
current_path = File.dirname(__FILE__)
require current_path + '/lib/test.rb'
require current_path + '/lib/test_data.rb'
require current_path + '/lib/result_printer.rb'

name = ARGV[0]
name = name.encode("UTF-8") if Gem.win_platform? && ARGV[0]
name = "Таинственная персона" if name == nil
puts "Привет #{name} давайте ответим на несколько вопросов"

test_data = TestData.new
test = Test.new(test_data)
test.ask_question until test_data.is_finished?

result = ResultPrinter.new
puts "\n #{name} вы набрали #{test.points} баллов "
puts result.result_print(test)



