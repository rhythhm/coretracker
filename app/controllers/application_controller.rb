class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
#Voh sabb helper methods hain, to check if the user is signed in, and get the property of current user. Ohh toh they won't go into this?? Yup, they will be used if you need to access user anywhere. Accha toh if I am using in, hypothetical situation, which file will that go in? And why is it not working here?
end
