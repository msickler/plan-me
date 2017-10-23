class PlannersController < UsersController

  def index
    @planners = Planner.all
  end

  def new
    @planner = Planner.new
  end

  def create
    @planner = Planner.new(planner_params)
    if @planner.save
      session[:planner_id] = @planner.id
      binding.pry
      redirect_to planner_path(@planner)
    else
      redirect_to new_planner_path
    end
  end

  def edit
    @planner = Planner.find(params[:id])
  end

  def show
    #if session[:user_id]
    @planner = Planner.find_by(id: params[:id])
    binding.pry

  end

  def update
		@planner = Planner.find(params[:id])
  	@planner.update(planner_params)
		redirect_to planner_path(@planner)
	end

  private

    def planner_params
      params.require(:planner).permit(:id, :name, :email, :password, :personality, :reason, :international)
    end

end
