repeat = 1

def make_question
  @question = rand(1..3)
end

def answer_prompt
  puts "give your answer"
  @answer1 = gets.chomp.to_i
end

def response
    answer_prompt
  if @answer1 < @question
    puts "higher"
    return false
  elsif @answer1 > @question
    puts"lower"
    return false
  else @answer1 == @question
    puts "you win"
    return true
  end
end

make_question
while repeat <11 && response != true
  repeat+=1
  response

end

#if response != true
#  make_question
#  answer_prompt
#  response
#end
