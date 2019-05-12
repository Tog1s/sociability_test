class ResultPrinter
  def initialize
    # Результаты теста

    @results = []

    file = File.new("./data/results.txt","r:UTF-8")
    @results = file.readlines(chomp: true)
  end

  def print_result(test)
    # Вывод результата
    puts "Ваши баллы: #{test.answers}"

    if test.answers >= 30
      puts @results[0]
    elsif test.answers >= 25 && test.answers < 30
      puts @results[1]
    elsif test.answers >= 19 && test.answers <= 24
      puts @results[2]
    elsif test.answers >= 14 && test.answers <= 18
      puts @results[3]
    elsif test.answers >= 9 && test.answers <= 13
      puts @results[4]
    elsif test.answers >= 4 && test.answers <= 8
      puts @results[5]
    else
      puts @results[6]
    end
  end
end
