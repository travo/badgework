class TargetsController < ApplicationController

  inherit_resources

  before_filter :find_target, :only => :show
  before_filter :find_targets

  private

  def find_targets
    @targets = Target.all
  end

  def find_target
    @target = Target.find(params[:id])
  end

end