class WelcomeController < ApplicationController
    before_action :authenticate_profile!
  def index
  end
end
