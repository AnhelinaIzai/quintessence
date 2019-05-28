class LessonsController < ApplicationController
  before_action :set_course, only: [:new, :create, :show, :edit, :update]
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]

  def index
    @lessons = Lesson.all
  end

  def new
    respond_to do |format|
       format.js
     end
  end

  def create
    @course = Course.find_by(id: params[:id])
    @lesson = Lesson.create(lesson_params)
    if @lesson.save
        redirect_to courses_path
    else
      render 'new'
    end
  end

  def show
    @question = Question.all
  end

  def edit
    #code
  end

  def update
    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to @lesson, notice: 'Lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson }
      else
        format.html { render :edit }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @lesson.destroy
    respond_to do |format|
      format.html { redirect_to lessons_url, notice: 'Lesson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private
  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def set_course
    @course = Course.find_by(id: params[:course_id])
  end

  def lesson_params
    params.permit(:course_id, :title, :desc, {attachment: []}, :avatar)
  end
end
