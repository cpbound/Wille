class WillsController < ApplicationController


  def index
    @wills = policy_scope(Will)
    @executors = Executor.where(user: current_user)
  end

  def show
    @will = Will.find(params[:id])
  end

  def new
    @will = Will.new
    authorize @will
  end

  def create
    @will = Will.new(will_params)
    @will.user = current_user
    authorize @will
    @will.user = current_user
    if @will.save
      redirect_to will_path
    else
      render :new
    end
  end

    def edit
      @will = Will.find(params[:id])
       authorize @will
    end

    def update
      @will = Will.find(params[:id])
       authorize @will
      @will.update(will_params)
      redirect_to will_path(@will)
    end

  private

  def will_params
    params.require(:will).permit(:user, :assets_range, :residuary, :primary_beneficiaries, :donation, :signature)
  end

end
