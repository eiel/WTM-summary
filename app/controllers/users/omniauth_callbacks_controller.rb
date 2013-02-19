class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def twitter

    @user = User.find_for_twitter_oauth(request.env["omniauth.auth"],
                                        current_user)
    if @user.persisted?
      #this will throw if @user is not activated
      sign_in_and_redirect @user, :event => :authentication
      if is_navigational_format?
        set_flash_message(:notice, :success, :kind => "Twitter")
      end
    else
      session["devise.twitter_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end
