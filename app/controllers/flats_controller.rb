require 'open-uri'

class FlatsController < ApplicationController


  before_action :set_flats, only: [:index, :show]

  def index
    # @flats = ??
  end

  def show
    @flat = @flats.find { |flat| flat['id'] == params[:id].to_i}

    # @flat = Flat.find(154)
    # @flat= Flat.find(params[:id])
  end


  def set_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end
end
