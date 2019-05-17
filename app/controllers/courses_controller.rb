class CoursesController < InheritedResources::Base

  private

    def course_params
      params.require(:course).permit(:title, :description, :avatar)
    end
    
    def set_course
    @course = Course.find(params[:id])
  end
end

