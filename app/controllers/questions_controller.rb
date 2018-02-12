class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == "I am going to work"
      @post = "Great!"
    elsif @question[-1].include? "?"
      @post = "Silly question, get dressed and go to work!"
    else
      @post = "I don't care, get dressed and go to work!"
    end
  end
end
