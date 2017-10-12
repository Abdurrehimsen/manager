class AnalytesController < ApplicationController
  before_action :set_analyte, only: [:show, :edit, :update, :destroy]

  # GET /analytes
  # GET /analytes.json
  def index
    @program = Program.find(params[:program_id])
    @analytes = @program.analytes
  end

  # GET /analytes/1
  # GET /analytes/1.json
  def show
    @program = Program.find(params[:program_id])
  end

  # GET /analytes/new
  def new
    @program = Program.find(params[:program_id])
    @analyte = @program.analytes.build
  end

  # GET /analytes/1/edit
  def edit
    @program = Program.find(params[:program_id])
    @analyte = @program.analytes.find(params[:id])
  end

  # POST /analytes
  # POST /analytes.json
  def create
    @program = Program.find(params[:program_id])
    @analyte = @program.analytes.build(analyte_params)

    respond_to do |format|
      if @analyte.save
        format.html { redirect_to program_analytes_url(@program), notice: 'Analyte was successfully created.' }
        format.json { render :show, status: :created, location: @analyte }
      else
        format.html { render :new }
        format.json { render json: @analyte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analytes/1
  # PATCH/PUT /analytes/1.json
  def update
    @program = Program.find(params[:program_id])
    respond_to do |format|
      if @analyte.update(analyte_params)
        format.html { redirect_to program_analytes_url(@program), notice: 'Analyte was successfully updated.' }
        format.json { render :show, status: :ok, location: @analyte }
      else
        format.html { render :edit }
        format.json { render json: @analyte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analytes/1
  # DELETE /analytes/1.json
  def destroy
    @program = Program.find(params[:program_id])
    @analyte.destroy
    respond_to do |format|
      format.html { redirect_to program_analytes_url(@program), notice: 'Analyte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analyte
      @analyte = Analyte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def analyte_params
      params.require(:analyte).permit(:name)
    end
end
