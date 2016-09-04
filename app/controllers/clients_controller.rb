class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def show
    @clients = Client.find(params[:id])
  end
end
