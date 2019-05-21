ActiveAdmin.register Course do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

permit_params :title, :description, :avatar, documents:[]
form html: { multipart: true } do |f|
   f.semantic_errors

   f.inputs do
     f.input :title
     f.input :avatar, as: :file
     f.input :documents, as: :file, input_html: { multiple: true }
     f.input :description

   end
   actions
 end
 controller do
    def create
      # Good
      @course = Course.new(permitted_params[:course])


      if @course.save
        redirect_to edit_admin_course_path(@course.id)
      end

      def edit
		@course = Course.find(params[:id])
	end
  end
end

end
