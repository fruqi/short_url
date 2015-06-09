class UrlsController < ApplicationController
  before_action :set_url, only: [:show]

  # GET /urls
  # GET /urls.json
  def index
    @url = Url.new
  end

  # GET /urls/1
  # GET /urls/1.json
  def show

    puts ??*40
    puts @url
    puts ??*40

    if @url
      redirect_to @url.original
    else
      flash[:error] = "Url not found :("
      redirect_to root_path
    end

  end

  # POST /urls
  # POST /urls.json
  def create
    @url = Url.new(url_params)

    respond_to do |format|
      if @url.save
        format.html { redirect_to root_path, notice: 'Url was successfully created.' }
        format.json { render :show, status: :created, location: @url }
        format.js
      else
        format.html { render :new }
        format.json { render json: @url.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_url
      @url = Url.find_by(short: params[:slug])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def url_params
      params.require(:url).permit(:short, :original)
    end
end
