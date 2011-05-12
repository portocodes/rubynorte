class ContentController < ApplicationController
  def index
    @talks = Talk.accepted
    @talk  = Talk.new
    @admissions = Admission.order('created_at')
    @confirmed_count = @admissions.map { |ab| ab.confirmed }.count { |ac| ac == true }

    @user = Admission.find_by_provider_and_uid session[:user][:provider], session[:user][:uid] if session[:user]
  end

  def map
    render :layout => false
  end

end
