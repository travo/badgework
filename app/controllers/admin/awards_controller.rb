class Admin::AwardsController < ApplicationController

  inherit_resources

  before_filter :find_award, :only => :edit
  before_filter :find_awards

  private

  def find_awards
    @awards = Award.all
  end

  def find_award
    @award = Award.find(params[:id])
    @tasks = @award.tasks
  end

end