module TripsHelper

  def user_id_field(trip)
      if trip.user.nil?
        select_tag "trip[user_id]", options_from_collection_for_select(User.all, :id, :name)
      else
        hidden_field_tag "trip[user_id]", trip.user_id
      end
    end

end
