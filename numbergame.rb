def make_question
  @question = rand(1..100)
end

def answer_prompt
  puts "give your answer"
  @answer1 = gets.chomp.to_i
end

def response
  if @answer1 > @question
    puts "higher"
  elsif @answer1 < @question
    puts"lower"
  elsif @answer == @question
    puts "you win"
    exit
  end
end

make_question
answer_prompt
response

if response != true
  make_question
  answer_prompt
  response  
end
