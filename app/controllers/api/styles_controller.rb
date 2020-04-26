class Api::StylesController < ApplicationController
  def index
    @styles = Style.all
    render "index.json.jb"
  end

  def show
    @style = Style.find_by(trip_name: params[:trip_name])

    render "show.json.jb"
  end
end
