class PersonPassController < ApplicationController
  def show
    binding.pry
  end
    
  
  
  def new
    @person_pass = PersonPass.new
  end

  def create
    @person_pass = PersonPass.new(check_params)
    # binding.pry
      if @person_pass[:email] == "ralf"  && @person_pass[:password] == "poop"
        flash[:notice] =  "username and password correct"
        return true
      else 
        flash[:notice] =  "incorrect password and/or username"
        return false
      end
      @person_pass.update(:message)
  end 

  private 
  def check_params
    params.require(:person_pass).permit(:email, :password, :username)
  end 
end
