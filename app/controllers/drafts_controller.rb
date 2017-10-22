class DraftsController < ApplicationController
  before_action :require_login

  def show
    @draft = Draft.find(params[:id])
  end

  def create
    @draft = Draft.create(planner_id: planner.id)
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :planner_id
  end

end
