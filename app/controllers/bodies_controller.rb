class BodiesController < ApplicationController
  def index
    @bodies = Body.all
  end

  def hash
    @hash = {}
    Body.where(current: true).each do |planet|
      @hash[planet.name] = HTTParty.get("http://ec2-54-187-83-106.us-west-2.compute.amazonaws.com/bodies/#{planet.name}/year/2013")
    end
    render json: @hash
  end
end
