#Félix Carle-Milette 2020-11-03
class AdminController < ApplicationController
    before_action :is_admin?, :get_recettes, :get_users
  
    private
    def is_admin?
      unless params[:is_admin] && params[:is_admin] == "God"
        render html: "NOT AUTORIZED"
      end
    end

    def get_recettes
      @recettes = Recette.all
    end

    def get_users
      @users = User.all
    end
  
  end