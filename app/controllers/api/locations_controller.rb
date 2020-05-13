class Api::LocationsController < ApplicationController
  def index
    if params[:style_id] != "undefined"
      style = Style.find_by(id: params[:style_id])
      @locations = style.locations
    else
      @locations = Location.all
    end
    render "index.json.jb"
  end
end
