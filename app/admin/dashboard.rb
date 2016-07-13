ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
         panel "Info" do
           para "Welcome to ActiveAdmin."
        end
         panel "Info" do
           para "Welcome to ActiveAdmin."
        end
        panel "ActiveAdmin Demo" do
          div do

          end
        end


    

    columns do
  column do
    span "Column #1"
  end

  column do
    span "Column #2"
  end
end


  end # content


end
