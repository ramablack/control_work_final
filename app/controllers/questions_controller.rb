class QuestionsController < ApplicationController
  def new
    @question = Question.new
    @test = Test.find(params[:test_id])
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to tests_path
    else
      render "new"
    end
  end


  def show
    @test = Test.find(params[:test_id])
    @question = Question.find(params[:id])
    @answers = Answer.where(question: @question)
  end


  def edit
    @question = Question.find(params[:id])
    @test = Test.find(params[:test_id])
  end


  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      redirect_to tests_path
    else
      render "edit"
    end
  end


  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to :back
  end

  private

  def question_params
    params.require(:question).permit(:question, :test_id)
  end
  
end
