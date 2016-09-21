class WelcomeController < ApplicationController
  require "rails"
  require "money"

  def index
		
		@teste = Money.new(1000, "BRL").format 
   end
end
