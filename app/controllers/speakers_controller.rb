class SpeakersController < ApplicationController

  def index
    @speakers = Speaker.all
  end

  def new
    edit_permission
    @speaker = Speaker.new
  end

  def create
    edit_permission
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

  protected

  def edit_permission
    authenticate_user!
    redirect_to action: :index unless current_user.admin?
  end
end
