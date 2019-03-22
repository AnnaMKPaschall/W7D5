class Api::UsersController < ApplicationController
    # def new 
    #     @user = User.new 
    #     render :new 
    # end 

    def create 
        @user = User.new(user_params)
        if @user.save
            login(user)
            render :show 
        else 
            render :new, status: 404
            #render json: @user, status: 422
        end 
    end 

    def show
        @user = User.new
    end 
    
    private 
    def user_params 
        params.require(:users).permit(:username, :password)
    end 

end