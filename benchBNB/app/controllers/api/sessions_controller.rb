class Api::SessionsController < ApplicationController

    def show
    end

    def create
        @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
        if @user
            login(@user)
            render :show
        else
            # probs wrong will fix
            # render :new, status: 422, @user.errors['invalid credenz bruv']
            render json: ['invalid credenz bruv']
        end
    end

    def destroy
        if current_user
            logout          
            render {}
        else 
            render status: 404
        end
    end

end