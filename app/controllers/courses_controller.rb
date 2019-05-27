class CoursesController < InheritedResources::Base
	before_action :set_course, only: [:create, :show, :edit, :update, :destroy]

	def index
	  @courses = Course.all
	end

	def new
		@course = Course.new
	end

	def create
		@course = Course.create(course_params)
		if @course.save
			redirect_to course_path(@course)
		else
			render 'new'
		end
	end

	def show
		@test_question = TestQuestion.new
	  @is_bookmarked = @course.is_bookmarked(current_user)
	  @lessons = Lesson.all
	end

	def edit
	  #code
	end

	def update
		@course.update(course_params)
	    if @course.save
	      redirect_to course_path
	    end
	end

	def destroy
		@course.destroy
	    redirect_to root_path
	end

private
  def course_params
    params.require(:course).permit(:title, :description, :avatar)
  end

  def set_course
    @course = Course.find_by(id: params[:id])
  end
end
