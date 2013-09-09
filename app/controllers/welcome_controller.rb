class WelcomeController < ApplicationController

  before_filter :authenticate_user!, only: :overview
  before_action :redirect_to_profile_form!
  
  def index
    @q = Group.search(params[:q])
    @groups = @q.result(distinct: true)
  end

  def overview
    @profile = current_user.profile
  end

end