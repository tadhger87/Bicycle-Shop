class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
 # def current_clearance_level
  #  session[:role] || :guest
  #end
  
end
