class Admin::RecetteController < AdminController
    
    def recette
        respond_to do |format|
            format.html{render 'admin/recette'}
            format.json
            format.xml
        end 
    end  

    def get_recettes_id 
        @recettes = Recette.find(params[:id])
    end
end