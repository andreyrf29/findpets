class HomeController < ApplicationController
  def index
  	@animals = Animal.where(:status => 1)
  end
end
