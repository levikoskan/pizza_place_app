class PizzaPlacesController < ApplicationController
  before_action :set_pizza_place, only: [:show, :edit, :update, :destroy]

  # GET /pizza_places
  # GET /pizza_places.json
  def index
    @pizza_places = PizzaPlace.all
  end

  # GET /pizza_places/1
  # GET /pizza_places/1.json
  def show
  end

  # GET /pizza_places/new
  def new
    @pizza_place = PizzaPlace.new
  end

  # GET /pizza_places/1/edit
  def edit
  end

  # POST /pizza_places
  # POST /pizza_places.json
  def create
    @pizza_place = PizzaPlace.new(pizza_place_params)

    respond_to do |format|
      if @pizza_place.save
        format.html { redirect_to @pizza_place, notice: 'Pizza place was successfully created.' }
        format.json { render :show, status: :created, location: @pizza_place }
      else
        format.html { render :new }
        format.json { render json: @pizza_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pizza_places/1
  # PATCH/PUT /pizza_places/1.json
  def update
    respond_to do |format|
      if @pizza_place.update(pizza_place_params)
        format.html { redirect_to @pizza_place, notice: 'Pizza place was successfully updated.' }
        format.json { render :show, status: :ok, location: @pizza_place }
      else
        format.html { render :edit }
        format.json { render json: @pizza_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizza_places/1
  # DELETE /pizza_places/1.json
  def destroy
    @pizza_place.destroy
    respond_to do |format|
      format.html { redirect_to pizza_places_url, notice: 'Pizza place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pizza_place
      @pizza_place = PizzaPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pizza_place_params
      params.require(:pizza_place).permit([:name, :address, :city, :state, :zip_code])
    end
end
