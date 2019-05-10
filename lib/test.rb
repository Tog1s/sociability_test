class Test
  def initialize
    # Вопросы
    @questions = []
    @answers = 0

    file = File.new("./data/questions.txt","r:UTF-8")
    lines = file.readlines
    @questions = lines
    file.close

  end

  def next_question
    #Цикл вопросов
    for question in @questions do
      puts question
      user_input = nil

      until user_input == "1" || user_input == "2" || user_input == "3"
        puts "Введите: 1 - Да,  2 - Нет,  3 - Иногда."
        user_input  = STDIN.gets.chomp.downcase
      end

      if user_input == "1"
        @answers += 2
      elsif user_input == "3"
        @answers += 1
      else
        @answers += 0
      end
    end
  end

  def answers
    return @answers
  end
end
