class AwardsController < ApplicationController

  inherit_resources

  before_filter :find_award, :only => :show
  before_filter :find_awards

  private

  def find_awards
    @awards = Award.all
  end

  def find_award
    @award = Award.find_using_slug(params[:id])
  end

end