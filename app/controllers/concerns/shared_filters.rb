module SharedFilters

  private

  def admin
    unless current_user.admin == true
      flash[:error] = "That's an admin priviledge"
      redirect_to root_path
    end
  end
end 