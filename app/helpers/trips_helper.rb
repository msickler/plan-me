module TripsHelper

  def planner_id_field(trip)
      if trip.planner.nil?
        select_tag "trip[planner_id]", options_from_collection_for_select(Planner.all, :id, :name)
      else
        hidden_field_tag "trip[planner_id]", trip.planner_id
      end
    end

end 
