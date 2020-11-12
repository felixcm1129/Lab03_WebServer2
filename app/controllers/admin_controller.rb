#Félix Carle-Milette 2020-11-03
class AdminController < ApplicationController
  before_action :is_admin?
  
  private
  def is_admin?
    unless params[:is_admin] && params[:is_admin] == "God"
      render html: "NOT AUTORIZED"
    end
  end
end