class LessonsController < InheritedResources::Base
  def index
  	@lesson = Lesson.all
  end
def new
      @lesson = Lesson.new
   end
   
   def create
      @lesson = Lesson.new(lesson_params)
      
      if @lesson.save
         redirect_to course_path(@course_id), notice: "The resume #{@lesson.title} has been uploaded."
      else
         render "new"
      end
      
   end
   
   def destroy
      @lesson = Lesson.find(params[:id])
      @lesson.destroy
      redirect_to cource_path(@course_id), notice:  "The resume #{@lesson.title} has been deleted."
   end

  private

    def lesson_params
      params.require(:lesson).permit(:course_id, :title, :desc, :attachment)
    end
end

