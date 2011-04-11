class ContentController < ApplicationController
  def index
    @talks = Talk.accepted
    @talk  = Talk.new
  end

  def map
    render :layout => false
  end

end
