class Api::V1::BasicsController < ApplicationController

  skip_before_action :verify_authenticity_token

  before_action :set_basic, only: [:show, :edit, :update, :destroy]

  # GET /basics

  def index
    @basics = Basic.all
    p @basics
    render json: @basics
  end

  # GET /basics/1

  def show
    render json: @article
  end

  # GET /basics/new

  # GET /basics/1/edit

  def edit
  end

  # POST /basics

  def create
    p 'got to create method'
    @basic = Basic.new(basic_params)
    p '.new worked'
    if @basic.save
      p '.save worked'
      render json: @basic, status: :created, location: api_v1_basic_url(@basic)

    else
      p "GOT TO ERROR #{@basic.errors}"
      render json: @basic.errors, status: :unprocessable_entity

    end
  end

  # PATCH/PUT /basics/1
  def update

    if @basic.update(basic_params)

      render json: @basic

    else

      render json: @basic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /basics/1
  # DELETE /basics/1.json
  def destroy
    @basic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basic
      @basic = Basic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basic_params
      p 'got to params fxn'
      params.require(:basic).permit(:name, :age, :sex, :classs, :race, :height)
    end
end
