class FuneralsController < ApplicationController

  include Wicked::Wizard
  steps :ten_words, :memory, :music, :no_invite, :sending_message, :unaware_state, :arrangement, :representative, :body

  def show
    @funeral = current_user.funeral || Funeral.create(user: current_user)
    authorize @funeral
    case step
    when :ten_words
    when :memory
    when :music
    when :no_invite
    when :sending_message
    when :unaware_state
    when :arrangement
    when :representative
    when :body
    end
    render_wizard
  end

  def update
    @funeral = current_user.funeral
    authorize @funeral
    case params[:id]
    when "ten_words"
      @funeral.tag_list.add(funeral_params[:tag_list])
    when "memory"
      @funeral.update(funeral_params)
    when "music"
      @funeral.music = funeral_params[params[:id]]
    when "no_invite"
      @funeral.no_invite = funeral_params[params[:id]]
    when "sending_message"
      @funeral.sending_message = funeral_params[params[:id]]
    when "unaware_state"
      @funeral.unaware_state = funeral_params[params[:id]]
    when "arrangement"
      @funeral.arrangement = funeral_params[params[:id]]
    when "representative"
      @funeral.representative = funeral_params[params[:id]]
      when "body"
      @funeral.body = funeral_params[params[:id]]
    end
    if @funeral.save
      redirect_to next_wizard_path
    end
  end


  def finish_wizard_path
    funerals_path
  end

  def index
    @funeral = policy_scope(Funeral)
  end

  private

  def funeral_params
    params.require(:funeral).permit(:photo, :music, :no_invite, :sending_message, :arrangement, :representative, :ten_words, :memory, :unaware_state, :body, tag_list: [])
  end
end
