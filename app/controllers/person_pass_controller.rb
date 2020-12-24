class PersonPassController < ApplicationController
  def show
    binding.pry
  end
    
  
  
  def new
    @person_pass = PersonPass.new
  end

  def create
    # @check = Check.new(check_params)
    binding.pry
      if @person_pass.email == "ralf"  && @person_pass.password == "poop"
        puts "username and password correct"
      else 
        puts "incorrect password and/or username"
      end
  end 

  private 
  def check_params
    params.require(:person_pass).permit(:email, :password)
  end 
end
