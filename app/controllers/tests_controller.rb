class TestsController < ApplicationController


    def index
      unless user_signed_in?
        redirect_to new_user_session_path
      else
      @tests = Test.all
    end
  end


  def new
    @test = Test.new
  end


  def create
    @test = Test.new(test_params)

    if @test.save
      redirect_to tests_path
    else
      render "new"
    end
  end


  def show
    @test = Test.find(params[:id])
    @questions = Question.where(test: @test)
  end


  def edit
    @test = Test.find(params[:id])
  end


  def update
    @test = Test.find(params[:id])

    if @test.update(test_params)
      redirect_to tests_path
    else
      render "edit"
    end
  end


  def destroy
    @test = Test.find(params[:id])
    @test.destroy
    redirect_to tests_path
  end

  private

  def test_params
    params.require(:test).permit(:name, :description)
  end

end
