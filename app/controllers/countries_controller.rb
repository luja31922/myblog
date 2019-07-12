class CountriesController < ApplicationController

  def new
    @country = Country.new
  end

  def index
    @countries = Country.all
  end

  def show
    load_country
  end

  def create
    country = Country.new(country_params)
    if country.save
      message =  {success: 'Pais fue creado'}
    else
      message =  {success: pais.errors.full_messages.to_sentence}
    end
    redirect_to new_country_path, flash: message
  end

  def update
    load_country
    @country.update(country_params)
    redirect_to edit_country_path(@country), flash: {success: 'Pais fue actualizado'}
  end

  def destroy
    load_country
    @country.destroy
    redirect_to countries_path, flash: {success: 'Pais fue eliminado'}
  end

  def edit
    load_country

  end

  def articles_by_country
    @countries = Country.where(continente: params[:continente])
  end

  private

  def country_params
    params.require(:country).permit(:continente, :pais, :poblacion,:vida_costo, :vacaciones_costo, :moneda,:descripcion, :visa_requiere, :lgtb_amigable)
  end

  def load_country

    @country = Country.find(params[:id])
  end
end
