class CitiesController < ApplicationController

  def new
    @city = City.new
    @country = Country.find(params[:country_id])
  end

  def index
    @country = Country.find(params[:country_id])
    @cities = @country.cities
  end

  def show
    @country = Country.find(params[:country_id])
    @cities = City.find(params[:id])
  end

  def create
    @country = Country.find(params[:country_id])
    new_city = @country.cities.new(city_params)
    if new_city.save
      redirect_to country_path(@country, @city)
    else
      redirect_to country_path(@country, @city), flash: {warning: new_city.errors.full_messages.to_sentence }
    end

  end


  def update
    load_city
    @country = Country.find(params[:country_id])
    @city.update(city_params)
    redirect_to edit_country_city_path(@country, @city), flash: {success: 'Ciudad fue actualizado'}
  end

  def destroy
    load_city
    load_country
    @city.destroy
    redirect_to country_cities_path(@country), flash: {success: 'Pais fue eliminado'}
  end

  def edit
    load_city
    @country = Country.find(params[:country_id])

  end


  private

  def city_params
    params.require(:city).permit(:ciudad, :county_id, :continente, :poblacion, :descripcion,)
  end

  def load_country
    @country = Country.find(params[:country_id])
  end

  def load_city
    @city = City.find(params[:id])
  end
end
