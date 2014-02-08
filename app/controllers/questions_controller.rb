class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = current_user.questions.build(question_params)
    if @question.save
      @question.users.concat(current_user)
      redirect_to '/questions'
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      if @question.users.exclude? current_user
        @question.users.concat(current_user)
      end
      redirect_to '/questions'
    end
  end


private

  def question_params
    params.require(:question).permit(:title, :text, :id, :user_id, :question_id)
  end

end
