class UnitListLinesController < ApplicationController
  before_action :set_unit_list_line, only: [:show, :edit, :update, :destroy]
  before_action :set_inheritenced_vars, only: [:index, :show, :new,  :edit, :create, :update, :destroy]

  # GET /unit_list_lines
  # GET /unit_list_lines.json
  def index
    @unit_list_lines = @unit_list.unit_list_lines
  end

  # GET /unit_list_lines/1
  # GET /unit_list_lines/1.json
  def show
  end

  # GET /unit_list_lines/new
  def new
    @unit_list_line = @unit_list.unit_list_lines.build
  end

  # GET /unit_list_lines/1/edit
  def edit
  end

  # POST /unit_list_lines
  # POST /unit_list_lines.json
  def create
    @unit_list_line = @unit_list.unit_list_lines.build(unit_list_line_params)

    respond_to do |format|
      if @unit_list_line.save
        format.html { redirect_to unit_list_unit_list_lines_url(@unit_list), notice: 'Unit list line was successfully created.' }
        format.json { render :show, status: :created, location: [@unit_list, @unit_list_line] }
      else
        format.html { render :new }
        format.json { render json: @unit_list_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unit_list_lines/1
  # PATCH/PUT /unit_list_lines/1.json
  def update
    @unit_list = UnitList.find(params[:unit_list_id])
    respond_to do |format|
      if @unit_list_line.update(unit_list_line_params)
        format.html { redirect_to unit_list_unit_list_lines_url(@unit_list), notice: 'Unit list line was successfully updated.' }
        format.json { render :show, status: :ok, location: [@unit_list, @unit_list_line] }
      else
        format.html { render :edit }
        format.json { render json: @unit_list_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_list_lines/1
  # DELETE /unit_list_lines/1.json
  def destroy
    @unit_list_line.destroy
    respond_to do |format|
      format.html { redirect_to unit_list_unit_list_lines_url(@unit_list), notice: 'Unit list line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_inheritenced_vars
      @unit_list = UnitList.find(params[:unit_list_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_list_line
      @unit_list_line = UnitListLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unit_list_line_params
      params.require(:unit_list_line).permit(:name, :value)
    end
end
