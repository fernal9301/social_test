# encoding: utf-8
class ResultPrinter
  def initialize
    current_path = File.dirname(__FILE__)
    file_path = current_path + '/../data/test_results.txt'
    @results = File.readlines(file_path)
  end

  def result_print(test)
    if test.points >= 30
      return @results[0]
    elsif test.points >= 25 && test.points <= 29
      return @results[1]
    elsif test.points >= 19 && test.points <= 24
      return @results[2]
    elsif test.points >= 14 && test.points <= 18
      return @results[3]
    elsif test.points >= 4 && test.points <= 8
      return @results[4]
    else
      return @results[5]
    end
  end
end