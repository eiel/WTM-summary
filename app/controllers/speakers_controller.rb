class SpeakersController < ApplicationController

  def new
    @speaker = Speaker.new
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
