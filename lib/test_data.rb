# encoding: utf-8
class TestData
  def initialize
    @question_counter = 0
    current_path = File.dirname(__FILE__)
    file_test_questions = current_path + "/../data/test_questions.txt"
    @test_questions = File.readlines(file_test_questions)
  end

  def question
    @test_questions[@question_counter]
  end

  def next_step
    @question_counter += 1
  end

  def finished?
    @question_counter >= @test_questions.size
  end

  def question_counter
    @question_counter
  end
end
