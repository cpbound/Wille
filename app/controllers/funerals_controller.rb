class FuneralsController < ApplicationController
  def index
    @funerals = policy_scope(funeral)
  end

  def new
    @funeral = Funeral.new
    authorize @funeral
  end

  def create
    @funeral = Funeral.new(funeral_params)
    @funeral.save
    redirect_to new_funeral_path(@funeral)
  end

  private

  def funeral_params
    params.require(:funeral).permit(:music, :no_invite, :sending_message, :arrangement, :representative, :ten_words, :memory, :unaware_state)
  end
end
