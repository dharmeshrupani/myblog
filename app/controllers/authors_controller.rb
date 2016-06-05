class AuthorsController < ApplicationController
  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      flash[:success] = "Registration Complete!"
      redirect_to root_url
    else
      render "new"
    end
  end

  private

  def author_params
    params.require(:author).permit(:email, :password,
                                 :password_confirmation)
  end

end
