class CreateUserController < ApplicationController
  def new
    @create_user = CreateUser.new
  end 

  def create
    
    # binding.pry
    
    @create_user = CreateUser.create(params.require(:username).permit(:username, :email, :password))
    if @create_user.save()
      redirect_to '/'
    else
      redirect_to '/create_user'
    end
  end

  private 
  def check_params
    params.require(:create_user).permit(:id, :email, :password, :usernam, :message)
  end 
end
