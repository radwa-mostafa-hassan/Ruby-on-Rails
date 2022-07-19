class SessionsController < ApplicationController
    def new
    end

    def create
        author = Author.find_by(email: params[:email])
      if author.present? && author.authenticate(params[:password])
        session[:author_id] = author.id
        redirect_to root_path, notice: "logged in successfully"
      else
        flash[:alert] = "invalid email or password"
        render :new
      end
    end
  
    def destroy
      session[:author_id] = nil
      redirect_to root_path,notice: "logged-out"
    end
  
    private
  
    def author_params
      params.require(:author).permit(:email, :password, :password_confirmation)
    end
end