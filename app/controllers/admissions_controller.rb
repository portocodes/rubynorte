# encoding: utf-8
class AdmissionsController < ApplicationController
  def index
    @admissions = Admission.all
    render :layout => !request.xhr?
  end

  def new
    render :layout => !request.xhr?
  end

  def create
    auth = request.env["omniauth.auth"]
    admission = Admission.find_by_provider_and_uid(auth["provider"], auth["uid"]) ||
      Admission.create!({ provider: auth["provider"] ,
        uid: auth["uid"] ,
        name: auth["user_info"]["name"] ,
        image_url: auth["user_info"]["image"] ,
        screen_name: auth["user_info"]["nickname"]})
    redirect_to root_url, :notice => "Obrigado por te teres inscrito! Estás entre #{Admission.count - 1} outros rubyistas (para já). Traz um amigo!"
  end

end
