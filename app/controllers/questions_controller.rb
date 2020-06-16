class QuestionsController < ApplicationController

  def ask
  end

  def answer
    your_message = params[:question]
    @answer = coach_answer(your_message)
  end

  def coach_answer(your_message)
    if your_message == "I am going to work"
      "Great!"
    elsif your_message[-1] == "?"
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
