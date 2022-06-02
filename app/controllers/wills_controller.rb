class WillsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:executor]
  skip_before_action :authenticate_user!, only: [:executor]

  def index
    @wills = policy_scope(Will)
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
      redirect_to will_path(@will)
    else
      render :new
    end
  end

  def edit
    @will = current_user.will
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

  def invite
    @will = Will.find(params[:id])
    authorize @will
    UserMailer.with(will: @will, email: params[:email]).invite.deliver_now
    flash[:notice] = "Invitation sent!"
    redirect_to will_path(@will)
  end

  def executor
    if @will = Will.find(params[:id])
      authorize @will
      @will.update(executor: executor_params)
      redirect_to will_path(@will)
    else
      render :new
    end
  end

  private

  def executor_params
    params.permit(:executor_id)
  end

  def will_params
    params.require(:will).permit(:user_id, :assets_range, :residuary, :primary_beneficiaries, :donation, :executor_id, :donation_amount)
  end

end
