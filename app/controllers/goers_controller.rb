class GoersController < ApplicationController

  def new
    @goer = Goer.new
  end

  def create
    @goer = Goer.new(goer_params)
    if @goer.save
      session[:goer_id] = @goer.id
      redirect_to 'home/index'
    else

      redirect_to new_goer_path
    end
  end

  def show
    @goer = Goer.find_by(id: params[:id])
  end

  private
    def goer_params
      params.require(:goer).permit(:id, :email, :password, :personality, :reason, :budget, :companion, :international)
    end

  end
