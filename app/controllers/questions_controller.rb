class QuestionsController < ApplicationController
  def home
  end

  def ask

  end

  def answer
    @response = ''
    case params['question']
    when 'I am going to work'
      @response = 'Great!'
    else
      if params['question'].include?('?')
        @response = 'Silly question, get dressed and go to work!'
      else
        @response = "I don't care, get dressed and go to work!"
      end
    end
  end
end
