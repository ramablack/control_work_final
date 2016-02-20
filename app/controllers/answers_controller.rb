class AnswersController < ApplicationController

  def new
    @answer = Answer.new
    @question = Question.find(params[:question_id])
    @test = Test.find(params[:test_id])
  end

  def create
    @answer = Answer.new(answer_params)

    if @answer.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def edit
    @answer = Answer.find(params[:id])
    @question = Question.find(params[:question_id])
    @test = Test.find(params[:test_id])
  end

  def update
    @answer = Answer.find(params[:id])

    if @answer.update(answer_params)
      redirect_to root_path
    else
      render "edit"
    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to :back
  end

  private

  def answer_params
    params.require(:answer).permit(:answer, :button, :question_id)
  end

end
