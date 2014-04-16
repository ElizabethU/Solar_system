require 'httparty'

class Updater
  def initialize
    @bodies = Body.all
    @year = Date.today.year.to_s
    @day = Date.today.yday.to_s
  end

  def update
    @bodies.each do |body|
      next if body.name == 'sol' || body.current == false
      this_planet_hash = HTTParty.get("http://ec2-54-187-83-106.us-west-2.compute.amazonaws.com/bodies/#{body.name}").parsed_response
      if this_planet_hash["body"]["years"][@year][@day]
        puts "Hey, I found the day in the hash!"
        today = this_planet_hash["body"]["years"][@year][@day]
        body.x = today["x"]
        body.y = today["y"]
        body.z = today["z"]
      else
        body.current = false
      end
      body.save
      puts "I saved a thing!"
    end
  end
end