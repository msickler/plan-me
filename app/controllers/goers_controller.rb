class GoersController < ApplicationController

  def index
    @goers = Goer.all
  end

  def new
    @goer = Goer.new
  end

  def create
    @goer = Goer.new(goer_params)
    if @goer.save
      session[:goer_id] = @goer.id
      redirect_to goer_path(@goer)
    else
      redirect_to new_goer_path
    end
  end

  def show
    @goer = Goer.find_by(id: params[:id])
  end

  def edit
    @goer = Goer.find(params[:id])
  end

  def update
		@goer = Goer.find(params[:id])
		@goer.update(goer_params)
		redirect_to goer_path(@goer)
	end

  private
    def goer_params
      params.require(:goer).permit(:id, :name, :email, :password, :personality, :reason, :budget, :companion, :international)
    end

  end
