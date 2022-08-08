class UsersController < ApplicationController
  def new
    @user= User.new
  end
  def likes 
    @user = User.find_by(id: params[:id])
    @likes = Like.where(user_id: @user.id)
  end
  def create
    @user=User.new(
       name: params[:user][:name],
       email: params[:user][:email],
       password: params[:user][:password],
       password_confirmation: params[:user][:password_confirmation])
       
        if @user.save
          session[:user_id] = @user.id
             redirect_to'/'
        else
           render 'new'
        end

  end
end
