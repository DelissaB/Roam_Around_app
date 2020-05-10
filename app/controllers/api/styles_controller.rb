class Api::StylesController < ApplicationController
  def index
    @styles = Style.all
    render "index.json.jb"
  end

  def show
    @style = Style.find_by(id: params[:id])
    render "show.json.jb"
  end
end
