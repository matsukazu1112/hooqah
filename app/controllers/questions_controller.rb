class QuestionsController < ApplicationController
  def create
    Question.create(create_params)
    redirect_to :root and return
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
  end

  private
  def create_params
    params.require(:question).permit(:text)
  end
end
