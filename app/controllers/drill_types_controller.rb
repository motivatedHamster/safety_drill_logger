class DrillTypesController < ApplicationController
  before_action :set_drill_type, only: [:show, :edit, :update, :destroy]

  # GET /drill_types
  # GET /drill_types.json
  def index
    @drill_types = DrillType.all
  end

  # GET /drill_types/1
  # GET /drill_types/1.json
  def show
  end

  # GET /drill_types/new
  def new
    @drill_type = DrillType.new
  end

  # GET /drill_types/1/edit
  def edit
  end

  # POST /drill_types
  # POST /drill_types.json
  def create
    @drill_type = DrillType.new(drill_type_params)

    respond_to do |format|
      if @drill_type.save
        format.html { redirect_to @drill_type, notice: 'Drill type was successfully created.' }
        format.json { render :show, status: :created, location: @drill_type }
      else
        format.html { render :new }
        format.json { render json: @drill_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drill_types/1
  # PATCH/PUT /drill_types/1.json
  def update
    respond_to do |format|
      if @drill_type.update(drill_type_params)
        format.html { redirect_to @drill_type, notice: 'Drill type was successfully updated.' }
        format.json { render :show, status: :ok, location: @drill_type }
      else
        format.html { render :edit }
        format.json { render json: @drill_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drill_types/1
  # DELETE /drill_types/1.json
  def destroy
    @drill_type.destroy
    respond_to do |format|
      format.html { redirect_to drill_types_url, notice: 'Drill type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drill_type
      @drill_type = DrillType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drill_type_params
      params.require(:drill_type).permit(:name, :required_frequency)
    end
end
