class Test
  attr_reader :answers

  def initialize
    # Вопросы
    @questions = []
    @answers = 0
    @questions = File.readlines("./data/questions.txt", chomp: true)
  end

  def next_question
    #Цикл вопросов
    correct_answers = %w[1 2 3]

    for question in @questions do
      puts question
      user_input = nil

      until correct_answers.include?(user_input)
        puts "Введите: 1 - Да,  2 - Нет,  3 - Иногда."
        user_input  = STDIN.gets.chomp
      end

      if user_input == '1'
        @answers += 2
      elsif user_input == '3'
        @answers += 1
      else
        @answers += 0
      end
    end
  end
end
