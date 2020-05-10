class Api::RequestsController < ApplicationController
  def index
    @requests = Request.all
    render "index.json.jb"
  end

  #consider adding an if method for saved
  def create
    @request = Request.new(
      style_id: params[:style_id],
      user_id: params[:user.id],
      # current_user.id
    )
    @request.save
    render "show.json.jb"
  end

  def show
    @request = Request.find_by(id: params[:id])
    render "show.json.jb"
  end

  def destroy
    @request = Request.find_by(id: params[:id])
    @request.destroy
    render json: { message: "Request successfully destroyed" }
  end
end
