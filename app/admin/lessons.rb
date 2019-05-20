ActiveAdmin.register Lesson do
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
	permit_params :title, :desc, :avatar, :attachment

  form html: { multipart: true } do |f|
   f.semantic_errors

   f.inputs do
          f.input :title
          f.input :desc
     	  f.input :avatar, as: :file
     	  f.input :attachment, as: :file
   end
   actions
 end

end
