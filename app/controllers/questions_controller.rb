class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:answer]
    @answer = "I don't care, get dressed and go to work!"
    if params[:answer].end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:answer] == 'I am going to work'
      @answer = 'Great!'
    end
  end
end
