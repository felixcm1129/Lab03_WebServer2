#Félix Carle-Milette 2020-11-03
class RecettesController < ApplicationController
    before_action :get_recettes
    layout false

    def index_1
        respond_to do |format|
            format.html{render 'recettes/index_1'}
            format.json{render 'recettes/index_1.json'}
            format.xml{render 'recettes/index_1.xml'}
        end
    end
    def index_2
        respond_to do |format|
            format.html{render 'recettes/index_2'}
            format.json{render 'recettes/index_2.json'}
            format.xml{render 'recettes/index_2.xml'}
        end
    end
    def index_3
        respond_to do |format|
            format.html{render 'recettes/index_3'}
            format.json{render 'recettes/index_3.json'}
            format.xml{render 'recettes/index_3.xml'}
        end
    end
    def index_4
        respond_to do |format|
            format.html{render 'recettes/index_4'}
            format.json{render 'recettes/index_4.json'}
            format.xml{render 'recettes/index_4.xml'}
        end
    end

    private 
    
    def get_recettes 
        @recettes = Recette.all
    end
end