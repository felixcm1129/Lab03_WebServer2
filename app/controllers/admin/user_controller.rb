class Admin::UserController < AdminController
    before_action :get_users

    def show
        respond_to do |format|
            format.html{render 'admin/show'}
            format.json
            format.xml
        end   
    end
    
    
end