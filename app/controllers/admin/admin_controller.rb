#Félix Carle-Milette 2020-11-03
class Admin::AdminController < AdminController

    def admin
        respond_to do |format|
            format.html{render 'admin/admin'}
            format.json
            format.xml
        end
    end
end