class UsersController < ApplicationController
    def register
        user = User.create(user_params)
        if user.valid?
            app_response(message: 'Registration was successful',
           status: :created, data: user )
            
           # render json: {
            #     message: 'Registration successful',
            #     data: user
            # }, status: :created

        else
        
                app_response(message: 'Something went wrong during registration',
                     status: :unprocessable_entity, data: user.errors)
            
        end
end
