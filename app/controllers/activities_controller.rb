class ActivitiesController < ApplicationController
  load_and_authorize_resource
  def index
    params[:page] ||= 1
    @activities = Activity.for_user(current_user, params)
  end
end
