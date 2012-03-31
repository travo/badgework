class AwardsController < ApplicationController

  inherit_resources

  before_filter :find_award, :only => :show

  private

  def find_award
    @award = Award.find_using_slug(params[:id])
  end

end