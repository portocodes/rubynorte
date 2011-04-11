class ContentController < ApplicationController
  def index
    @talks = Talk.all
    @talk  = Talk.new
  end

  def map
    render :layout => false
  end

end
