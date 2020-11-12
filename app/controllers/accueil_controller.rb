#Félix Carle-Milette 2020-11-03
class AccueilController < ApplicationController
    before_action :get_recettes

    def get_recettes 
      @recettes = Recette.all.order(:titre)
    end
  
end