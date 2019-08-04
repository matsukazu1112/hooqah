class QuestionsController < ApplicationController
  def create
    Question.create(create_params)
    redirect_to :root and return
  end

  private
  def create_params
    params.require(:question).permit(:text)
  end
end
