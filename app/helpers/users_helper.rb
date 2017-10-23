module UsersHelper

  def international?(user)
    if user.international == true
      "Global"
    else
      "The US"
    end
  end


end
