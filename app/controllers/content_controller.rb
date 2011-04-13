class ContentController < ApplicationController
  def index
    @talks = Talk.accepted
    @talk  = Talk.new
    @admissions = Admission.all
  end

  def map
    render :layout => false
  end

end
