class SessionsController < ApplicationController 

    def create 
        admin = Admin.find_by(username: params[:admin][:username])
        if admin && admin.authenticate(params[:admin][:password])
            session[:user_id] = admin.id
            redirect_to "/admin/home"
        else
            flash[:message] = "Incorrect login information, please try again."
            redirect_to "/admin/login"
        end
    end 

    def destroy
        session.clear
        redirect_to "/admin/home"
    end

end