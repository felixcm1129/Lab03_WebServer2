#Félix Carle-Milette 2020-11-03
class ApplicationController < ActionController::Base

    def get_recettes
        @recettes = Recette.find(params[:id])
    end

    def get_users
        @users = User.joins(:recettes).distinct
    end
end
