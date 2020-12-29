class PersonPassController < ApplicationController
  def index
    @person_passes = PersonPass.all
  end
  
  def show
    
  end

  def new
    @person_pass = PersonPass.new
    if @person_pass.save()
      flash[:info] = "User Created"
      redirect_to '/person_pass'
    else
      flash[:warning] = "User not Created"
      redirect_to '/'
    end
  end

  def create
    @person_pass = CreateUser.where(email: params[:person_pass][:email], username: params[:person_pass][:username], password: params[:person_pass][:password]).first
    if @person_pass.blank? 
      flash[:warning] = "Wrong, you can create new user"
      redirect_to '/'
    else 
      flash[:info] = "Correct"
    end
    
  end

  private 
  def check_params
    params.require(:person_pass).permit(:email, :password, :username)
  end 
end
