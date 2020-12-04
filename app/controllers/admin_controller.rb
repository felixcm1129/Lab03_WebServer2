#Félix Carle-Milette 2020-11-03
class AdminController < ApplicationController
  before_action :is_admin?, :authenticate_user!
  
  private
  def is_admin?
    unless current_user.email == "felixcm1129@hotmail.ca"
      redirect_to '/'
    end
  end
end