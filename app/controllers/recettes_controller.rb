#Félix Carle-Milette 2020-11-03
class RecettesController < ApplicationController
    before_action :get_recettes, :authenticate_user!

    def show
        respond_to do |format|
            format.html{render 'recettes/show'}
            format.json{render 'recettes/show.json'}
            format.xml{render 'recettes/show.xml'}
        end
    end
end