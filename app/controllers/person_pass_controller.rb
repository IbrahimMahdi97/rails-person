class PersonPassController < ApplicationController
  def show
    binding.pry
  end
  
  def new
    @person_pass = PersonPass.new
  end

  def create
    @person_pass = PersonPass.where(email: params[:person_pass][:email], username: params[:person_pass][:username], password: params[:person_pass][:password]).first
    if @person_pass.blank? 
      flash[:warning] = "Wrong"
    else 
      flash[:info] = "Correct"
    end
    redirect_to '/'
  end 

  private 
  def check_params
    params.require(:person_pass).permit(:id, :email, :password, :usernam, :message)
  end 
end
