# game.rb

class Game 
  def number
    rand(20)
  end

  def question(num1 , num2)
    index = rand(3)
    #operator = ['plus' , 'minus' , 'times']
    questions = [
      "What is the sum of #{num1} plus #{num2}",
      "What is the sum of #{num1} minus #{num2}",
      "What is the procudt of #{num1} times #{num2}"
    ]
    answers = [num1 + num2 , num1 - num2 , num1 * num2]
    [questions[index] , answers[index]]
  end

end
