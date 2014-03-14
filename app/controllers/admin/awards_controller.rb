class Admin::AwardsController < ApplicationController

  inherit_resources

  before_filter :find_award, :only => :edit

  private

  def find_award
    @award = Award.find(params[:id])
  end

end