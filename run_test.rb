# Тест с сайта Синтон http://www.syntone-spb.ru/library/article_syntone/content/4969.html
# Ваш уровень общительности. ver 1

require_relative "lib/test"
require_relative "lib/result_printer"

# Принимаем имя пользователя из аргумента командной строки
name = ARGV[0]

name = "Таинственная Персона" unless name

# Приветствие
puts "Добрый день, #{name}! Ответьте пожалуйста на несколько вопросов"

test = Test.new

result_printer = ResultPrinter.new

test.next_question

result_printer.print_result(test)
