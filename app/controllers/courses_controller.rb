class CoursesController < InheritedResources::Base

  private

    def course_params
      params.require(:course).permit(:title, :description, :avatar)
    end
end

