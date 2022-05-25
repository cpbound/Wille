class WillsController < ApplicationController

  def index
    @wills = Will.all
    @executors = Executor.where(user: current_user)
  end

  def show
    @will = Will.find(params[:id])
  end

  def new
    @will = Will.new
  end

  def create
    @will = Will.new(will_params)
    @will.user = current_user
    if @will.save
      redirect_to will_path
    else
      render :new
    end
  end

    def edit
      @will = Will.find(params[:id])
    end

    def update
      @will = Will.find(params[:id])
      @will.update(will_params)
      redirect_to will_path(@will)
    end

  private

  def will_params
    params.require(:will).permit(:user, :assets_range, :residuary, :primary_beneficiaries, :donation, :signature)
  end

end
