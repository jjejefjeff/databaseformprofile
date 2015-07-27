class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def show
    @user = Detail.find_by_id(params['id'])
  end
  
  def create
    
  end
  
  def create2
    u = Detail.new
    u.name = params['name']
    u.email = params['email']
    u.save
    
    redirect_to "/account/#{ u.id }"
  end
end
