class CoursesController < InheritedResources::Base
	 before_action :set_course, only: [:create, :show, :edit, :update, :destroy]
def index
	@courses = Course.all
end

def new
	@course = Course.new
end

def create


end
def show

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
      params.require(:course).permit(:title, :description, :avatar, :course_id)
    end

     def set_course
    @course = Course.find(params[:id])
  end
end
