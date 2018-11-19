class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @coach_answer =
      if @question == 'I am going to work'
        'Great!'
      elsif @question.last == '?'
        'Silly question, get dressed and go to work!'
      else
        'I don\'t care, get dressed and go to work!'
      end
  end
end
