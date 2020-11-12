#Félix Carle-Milette 2020-11-03
class AccueilController < ApplicationController
    before_action :get_recettes
    layout false
  
    private 
    
    def presentation
    end

    def get_recettes 
      @recettes = Recette.all
    end
  
end