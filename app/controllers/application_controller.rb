class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, except: [:index, :search_shows]
  
  def after_sign_in_path_for(resource)
    index_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end

end
