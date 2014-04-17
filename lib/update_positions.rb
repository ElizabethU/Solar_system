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

      api_response = HTTParty.get("http://ec2-54-187-83-106.us-west-2.compute.amazonaws.com/bodies/#{body.name}/year/#{@year}")

      if api_response.status != 200
        #no data for this year
        body.update(current: false) and next
      else
        this_planet_hash = api_response.parsed_response
      end
      
      if this_planet_hash[@day]
        puts "Hey, I found the day in the hash!"
        today = this_planet_hash[@day]
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