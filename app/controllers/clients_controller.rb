class ClientsController < ApplicationController
  before_action :find_client, only: [:show, :edit, :update, :destroy]

  def index
    @q = Client.ransack(params[:q])
    @clients = @q.result.order(:name).page params[:page]
    @countclients = @q.result.count()
  end

  def show
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to @client
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @client.update(client_params)
      redirect_to @client
    else
      render :edit
    end
  end

  def destroy
    @client.destroy
    redirect_to clients_path
  end

  private

  def client_params
    params.require(:client).permit(:name, :firstname, :address, :streetnumber, :route, :zipcode, :city, :sublocality, :state, :country, :countryshort, :latitude, :longitude, :email)
  end

  def find_client
    @client = Client.find(params[:id])
  end

end
