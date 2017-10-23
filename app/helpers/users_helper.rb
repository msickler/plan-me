module UsersHelper

  def international?
    if @user.international == true
      "Global"
    else
      "The US"
    end
  end


end
