module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  # Logs out the current user.
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  # Checks if the user is logged in, otherwise redirect to the homepage
  def is_logged_in
    if !logged_in?
      flash[:notice] = "You must be logged in to access this path"
      redirect_to root_path
    end
  end
end

def is_logged_in
  if !logged_in?
    flash[:notice] = "You must be logged in to access this path"
    redirect_to root_path
  end
end
end

def correct_user
@user = User.find(params[:id])
    redirect_to(root_path) unless @user = current_user
end
end
