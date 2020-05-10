class Api::LocationsController < ApplicationController
  def show
    @locations = Request.find_by(id: params[:id])
    render "show.json.jb"
  end
end
