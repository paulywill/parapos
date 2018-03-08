class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :get_current_user

  def get_current_user
    #raise exception "asdf"
    if user_signed_in?
      puts "current_user = #{current_user}"
    end
  end
end
