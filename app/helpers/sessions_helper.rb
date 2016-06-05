module SessionsHelper

  # Logs in the given author.
  def log_in(author)
    session[:author_id] = author.id
  end

  # Returns the current logged-in author (if any).
  def current_author
    @current_author ||= Author.find_by(id: session[:author_id])
  end

  # Returns true if the author is logged in, false otherwise.
  def logged_in?
    !current_author.nil?
  end

  # Logs out the current author.
  def log_out
    session.delete(:author_id)
    @current_author = nil
  end

end
