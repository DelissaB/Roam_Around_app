class Api::RequestsController < ApplicationController
  def index
    @requests = Request.all
    render "index.json.jb"
  end

  def create
    @request = Request.find_by(id:
      [:trip_style])
      passport: params[:passport]
    @request.save
    render "show.json.jb"
  end

  def show
    @request = Request.find_by(id: params[:id])
    render "show.json.jb"
  end

  def destroy
    request = Request.find_by(id: params[:id])
    request.destroy
    render json: { message: "Request successfully destroyed" }
  end
end
