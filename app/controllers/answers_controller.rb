class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @answer.question_id = @question.id
  end
  
  def create
    @answer = Answer.create(create_params)
    @question = @answer.question
  end

  def edit
    @answer = Answer.find(params[:id])
    @question = @answer.question
  end

  def update
    @answer = Answer.find(params[:id])
    @question = @answer.question
    @answer.update(update_params)
  end

  def destroy
    @answer = Answer.find(params[:id])
    @question = @answer.question
    @answer.destroy
    redirect_to question_path(@question.id)
  end


  private
  def create_params
    params.require(:answer).permit(:question_id, :text)
  end

  def update_params
    params.require(:answer).permit(:text)
  end
end
