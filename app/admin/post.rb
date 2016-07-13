ActiveAdmin.register Post do
  permit_params :title, :description, :content, :published_at

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
  form do |f|
    inputs 'Детали записи' do
      input :title, label: 'Имя записи'
      input :published_at, label: "Дата публикации", as: :datepicker, datepicker_options: { dateFormat: "dd.mm.yy"}
      li "Создано #{f.object.created_at}" unless f.object.new_record?
      #input :category
    end
    panel 'Дополнительная панель' do
      "Можно что то добавить"
    end
    inputs 'Контент' do
    input :content, label: "Контент", :as => :ckeditor
    para "Нажмите ОТМЕНА для того что бы выйти без сохранения."
    actions
end
  end



end
