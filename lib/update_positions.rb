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

      api_response = HTTParty.get("http://ec2-54-187-83-106.us-west-2.compute.amazonaws.com/bodies/#{body.name}/year/#{@year}").parsed_response

      if api_response[@year] == nil
        #no data for this year
        body.update(current: false) and next
      end
      
      if api_response[@year][@day]
        today = api_response[@year][@day]
        body.x = today["x"]
        body.y = today["y"]
        body.z = today["z"]
      else
        body.current = false
      end
      
      body.save
    end
  end
end