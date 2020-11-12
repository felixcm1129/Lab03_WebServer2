class Admin::RecetteController < AdminController
    before_action :get_recettes

    def recette
        respond_to do |format|
            format.html{render 'admin/recette'}
            format.json
            format.xml
        end 
    end  
end