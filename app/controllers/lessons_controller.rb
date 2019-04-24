class LessonsController < ApplicationController
   before_action :set_course, only: [:new, :create]
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  before_filter(:get_course)

  # GET /lessons
  # GET /lessons.json
  def index
    @lessons = Lesson.all
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
  end

  # GET /lessons/new
  def new
     @lesson = @course.lessons.build
  end

  # GET /lessons/1/edit
  def edit
  end

  # POST /lessons
  # POST /lessons.json
  def create
    @course = Course.find(params:[:course_id])
    @lesson = Lesson.new(:course=>@course)



    respond_to do |format|
      if @lesson.save
        format.html { redirect_to @lesson, notice: 'Lesson was successfully created.' }
        format.json { render :show, status: :created, location: @lesson }
      else
        format.html { render :new }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lessons/1
  # PATCH/PUT /lessons/1.json
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

  # DELETE /lessons/1
  # DELETE /lessons/1.json
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

def get_course
    @course = Course.find(params[:course_id])
end
private
 def set_course
    @course = Course.find_by(id: params[:course_id])
  end
  private

    def lesson_params
      params.require(:lesson).permit(:course_id, :title, :desc, :video)
    end
end



 

    

 



  