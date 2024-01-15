class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:input]
    @answer = questions(@questions)
  end

  def questions(input)
    if input == "I am going to work"
      return "Great!"
    elsif input.include?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
