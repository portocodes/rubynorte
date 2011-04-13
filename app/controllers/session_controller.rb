class SessionController < ApplicationController
  def create
    raise request.env.to_yaml
   #  auth = request.env["omniauth.auth"]
   #  user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
   #  session[:user_id] = user.id
   #  redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
  end

end
