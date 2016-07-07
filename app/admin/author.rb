ActiveAdmin.register Author do

 # permit_params :email

 index do
  selectable_column
  column :email
  actions
  # actions defaults: false do |author|
  #   item "View", admin_post_path(author)
  #  item "Edit", edit_admin_post_path(author)
  #   item "Delete", admin_post_path(author), method: :delete
  # end
end


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


end
