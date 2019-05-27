class InventoriesController < ApplicationController
  before_action :set_inventory, only: [:show, :edit, :update, :destroy]

  # GET /inventories

  def index
    @inventories = Inventory.all
    render json: @inventories
  end

  # GET /inventories/1

  def show
    render json: @inventory
  end

  # POST /inventories

  def create
    @inventory = Inventory.new(inventory_params)

    respond_to do |format|
      @inventory = Basic.new(basic_params)
      if @inventory.save
        render json: @inventory, status: :created, location: api_v1_basic_url(@inventory)
      else
        render json: @inventory.errors, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /inventories/1

  def update

        if @inventory.update(basic_params)

          render json: @inventory

        else

          render json: @inven.errors, status: :unprocessable_entity
        end

  end

  # DELETE /inventories/1

  def destroy
    @inventory.destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory
      @inventory = Inventory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventory_params
      params.require(:inventory).permit(:id, :name)
    end
end
