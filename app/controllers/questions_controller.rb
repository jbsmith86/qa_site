class QuestionsController < ApplicationController

  def index
    @questions = Question.all[0..9]
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
  end

  def edit
    @question = Question.find(params[:id])
  end


private

  def question_params
    params.require(:question).permit(:title, :text)
  end

end
