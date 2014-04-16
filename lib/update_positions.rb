require 'httparty'

class Updater
  def initialize
    @bodies = Body.all
    @year = Date.today.year
    @day = Date.today.yday
  end

  def update
    @bodies.each do |body|
      next if body.name = 'sol' || body.current == false
      this_planet_hash = HTTParty.get("http://ec2-54-187-83-106.us-west-2.compute.amazonaws.com/bodies/#{body}")
      if this_planet_hash["body"]["years"][@year][@day]
        today = this_planet_hash["body"]["years"][@year][@day]
        planet.x = today["x"]
        planet.y = today["y"]
        planet.z = today["z"]
      else
        body.current = false
      end
    end
  end
end