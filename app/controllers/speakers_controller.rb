class SpeakersController < ApplicationController

  def new
    authenticate_user!
    if current_user.admin?
      @speaker = Speaker.new
    else
      redirect_to :index
    end
  end

  def create
    @speaker = Speaker.new(params[:speaker])
    if @speaker.save
      redirect_to @speaker
    else
      render :new
    end
  end

  def show
    @speaker = Speaker.find(params[:id])
  end
end
