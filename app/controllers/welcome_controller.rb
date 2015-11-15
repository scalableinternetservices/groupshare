class WelcomeController < ApplicationController
  def index
    @recent_streams = Stream.where("expire_at > ?", Time.now).order(created_at: :desc).limit(10)
  end
end
