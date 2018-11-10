class SessionsController < ApplicationController

    def new
    end

    def create
        if params.has_key? 'name'
            if !params[:name].empty?
                session[:name] = params[:name]
                redirect_to '/'
            else
                redirect_to login_path
            end
        else
            redirect_to login_path
        end
    end

    def destroy
        session.delete :name
        redirect_to '/'
    end

end