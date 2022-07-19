
class AuthorMailer < ApplicationMailer
    default from: "from@example.com"
  
    def post_created
      creator = params[:id]
      @author = Author.find(1)
      mail(to: @author.email, subject: 'product post created')
    end
  end