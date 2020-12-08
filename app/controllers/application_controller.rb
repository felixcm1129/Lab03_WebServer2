#Félix Carle-Milette 2020-11-03
class ApplicationController < ActionController::Base

    def get_recettes
        @recettes = current_user.recettes
    end
end
