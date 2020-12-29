class CreateUserController < ApplicationController
  def index
    @create_users = CreateUser.all
  end
  
  def new
    @create_user = CreateUser.new
  end 

  def create
    @create_user = CreateUser.create(create_params)
    if @create_user.save()
      flash[:info] = "User created successfully"
      
      redirect_to '/person_pass'
    else
      flash[:warning] = "User was not creted"
      redirect_to '/'
    end
  end

  private 
    def create_params
      params.require(:create_user).permit(:email, :password, :username)
    end 
end
