class UsersController < ApplicationController
    
    def create
        
        # curl -X POST -d '"user": "{email":"example@mail.com","password":"12345", "password_confirmation":"12345"}"' http://localhost:3000/users
        
        user = User.new(user_params)
        
        if user.save
            render json: {status: 'User created successfully'}, status: :created
        else
            render json: {errors: user.errors.full_messages}, status: :bad_request
        end
    end
    
    private
    
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
    
end
