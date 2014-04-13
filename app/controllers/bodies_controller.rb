class BodiesController < ApplicationController
  def index
    @bodies = Body.all
  end
end
