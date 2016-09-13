class PagesController < ApplicationController
  def home
    @countclients =  Client.count()
  end
end
