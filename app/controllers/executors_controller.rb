class ExecutorsController < ApplicationController
  def new
    @executor = Executor.new
    authorize @executor
  end

  def create
    @executor = Executor.new(executor_params)
    @executor.user = current_user
    if @executor.save
      redirect_to wills_path
    else
      render :new
    end
  end

  def edit
    @executor = Executor.find(params[:id])
    @executor.user = current_user
    authorize @executor
  end

  def update
    @executor = Executor.find(params[:id])
    authorize @executor
    @executor.update(executor_params)
    redirect_to wills_path
  end

  private

  def executor_params
    params.require(:executor).permit(:name, :email, :address, :phone)
  end
end
