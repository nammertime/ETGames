class SessionsController < ApplicationController

  def new
  end

  def create
    user = Customer.find_by(UserName: params[:session][:username])

    if user.blank?
      flash[:danger] = 'username does not exist' # Not quite right!
      render 'new'
      elsif user.Password == params[:session][:password]
          flash[:danger] = 'LOGGED IN' # Not quite right!
          log_in user
          redirect_to root_path
    #redirect_to user

    # Log the user in and redirect to the user's show page.
        else
    # Create an error message.
        flash[:danger] = 'Invalid email/password combination' # Not quite right!
        render 'new'
    end
  end



  def destroy
    log_out
    redirect_to root_url
  end

end
