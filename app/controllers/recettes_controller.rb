#Félix Carle-Milette 2020-11-03
class RecettesController < ApplicationController
    before_action :authenticate_user!, :get_recettes

    def show
        respond_to do |format|
            format.html{render 'recettes/show'}
            format.json{render 'recettes/show.json'}
            format.xml{render 'recettes/show.xml'}
        end
    end

    def get_recettes
        @recettes = current_user.recettes
    end
end