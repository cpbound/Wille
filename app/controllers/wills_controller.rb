class WillsController < ApplicationController


  def index
    @wills = policy_scope(Will)
    @executors = Executor.where(user: current_user)
  end

  def show
    @will = Will.find(params[:id])
    authorize @will
  end

  def new
    @will = Will.new
    authorize @will
  end

  def create
    @will = Will.new(will_params)
    @will.user = current_user
    authorize @will
    if @will.save
      redirect_to will_path(@will.id)
    else
      render :new
    end
  end

  def edit
    @will = Will.find(params[:id])
    authorize @will
  end

  def update
    if @will = Will.find(params[:id])
      authorize @will
      @will.update(will_params)
      redirect_to will_path(@will)
    else
      render :new
    end
  end

  private

  def will_params
    params.require(:will).permit(:id, :user, :assets_range, :residuary, :primary_beneficiaries, :donation, :signature)
  end

end
