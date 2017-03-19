# encoding: utf-8
class Test
  attr_reader :points
  def initialize(test_data)
    @test_data = test_data
    @points = 0
  end

  def ask_question
    puts @test_data.question
    user_input = nil

    until user_input == "yes" || user_input == "no" || user_input == "sometimes"
      puts "Введите 'yes','no' или 'sometimes' и нажмите Enter"
      user_input = STDIN.gets.chomp.downcase
    end

    if user_input == "yes"
      @points += 2
    elsif user_input == "sometimes"
      @points += 1
    end
    @test_data.next_step
  end
end