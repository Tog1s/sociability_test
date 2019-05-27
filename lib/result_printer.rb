class ResultPrinter
  def initialize
    # Результаты теста
    @results = File.readlines("./data/results.txt", chomp: true)
  end

  def print_result(test)
    # Вывод результата
    puts "Ваши баллы: #{test.answers}"

    puts @results[0] if test.answers >= 30
    puts @results[1] if test.answers.between?(25, 30)
    puts @results[2] if test.answers.between?(19, 24)
    puts @results[3] if test.answers.between?(14, 18)
    puts @results[4] if test.answers.between?(9, 13)
    puts @results[5] if test.answers.between?(4, 8)
    puts @results[6] if test.answers < 4
  end
end
