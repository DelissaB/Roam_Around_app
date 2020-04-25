class Api::StylesController < ApplicationController
  def index
    @styles = Styles.all
    # if current_user
    render "index.json.jb"
  end

  consider removing render

  def show
    @style = Style.find_by(id: params[:id])
    render "show.json.jb"
  end
end
