class UsersController < ApplicationController
  def index
    @users = User.all
    render "index.html.erb"
  end

  def new
    render 'new.html.erb'
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password_digest: params[:password_digest],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      session[:user_id] = user.id
      flash[:success] = 'Successfully created account!'
      redirect_to "/"
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to "/signup"
    end
  end
end
