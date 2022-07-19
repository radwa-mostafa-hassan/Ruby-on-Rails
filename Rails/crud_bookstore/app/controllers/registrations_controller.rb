class RegistrationsController < ApplicationController
    def new
      @author = Author.new
    end
  
    def create
      @author = Author.new(author_params)
      if @author.save
        session[:author_id] = @author.id
        redirect_to root_path, notice: "welcome to our site"
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    private
  
    def author_params
      params.require(:author).permit(:email, :password, :password_confirmation)
    end
end