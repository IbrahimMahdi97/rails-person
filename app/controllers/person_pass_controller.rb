class PersonPassController < ApplicationController
  def show
    binding.pry
  end
    
  
  
  def new
    @person_pass = PersonPass.new
  end

  def create
    @person_pass = PersonPass.new(check_params)
    if @person_pass[:email] == "ralf"  && @person_pass[:password] == "poop"
      flash[:info] = "Correct"
      redirect_to '/'
    else
      flash[:warning] = "Wrong"
      redirect_to '/'
    end
    
  end 

  private 
  def check_params
    params.require(:person_pass).permit(:id, :email, :password, :usernam, :message)
  end 
end
