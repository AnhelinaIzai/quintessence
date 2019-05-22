class QuestionsController < ApplicationController
  before_action :authenticate_user!

  def create
    @question = Question.new(question_params)
    if @question.save
      @lesson = @question.lesson
      redirect_to lesson_path(@lesson)
    else
      flash[:alert] = "Something went wrong ..."
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @lesson = @question.lesson
    if @question.destroy
      redirect_to lesson_path(@lesson)
    else
      flash[:alert] = "Something went wrong ..."
    end
  end

  private
  def question_params
    params.required(:question).permit :user_id, :lesson_id, :body
  end
end
