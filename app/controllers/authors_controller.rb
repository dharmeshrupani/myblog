class AuthorsController < ApplicationController
  def new
    @author = Author.new
  end

  def create
    @author = Author.new(params[:author])
    if @author.save
      flash[:success] = "Registration Complete!"
      redirect_to root_url
    else
      render "new"
    end
  end

end
