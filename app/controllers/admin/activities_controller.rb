class Admin::ActivitiesController < ApplicationController

  inherit_resources

  before_filter :find_activity, :only => :edit
  before_filter :find_activities

  private

  def find_activities
    @activities = Activity.all
  end

  def find_award
    @activity = Activity.find(params[:id])
    @tasks = @activity.tasks
  end

end