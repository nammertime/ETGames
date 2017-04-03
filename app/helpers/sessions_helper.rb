module SessionsHelper

  def log_in(user)
    session[:user_id] = user.UserName
  end

  # Returns the current logged-in user (if any).
def current_user
  @current_user ||= Customer.find_by(UserName: session[:user_id])
end

def logged_in?
  !current_user.nil?
end

def log_out
  reset_session
  @current_user = nil
end

end
