module UsersHelper

  def international?(user)
    if user.international == true
      "Global"
    else
      user.international == false
      "The US"
    end
  end


end
