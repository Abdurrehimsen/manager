class UnitListsController < ApplicationController
  before_action :set_unit_list, only: [:show, :edit, :update, :destroy]
  before_action :set_inheritenced_vars, only: [:show, :edit, :create, :update, :destroy]

  # GET /unit_lists
  # GET /unit_lists.json
  def index
    @unit_lists = UnitList.all
  end

  # GET /unit_lists/1
  # GET /unit_lists/1.json
  def show
  end

  # GET /unit_lists/new
  def new
    @unit_list = UnitList.new
  end

  # GET /unit_lists/1/edit
  def edit
  end

  # POST /unit_lists
  # POST /unit_lists.json
  def create
    @unit_list = UnitList.new(unit_list_params)

    respond_to do |format|
      if @unit_list.save
        @analyte.mode_list_id = @unit_list.id
        @analyte.save
        format.html { redirect_to program_analyte_unit_list_path(@program, @analyte, @unit_list), notice: 'Unit list was successfully created.' }
        format.json { render :show, status: :created, location: @unit_list }
      else
        format.html { render :new }
        format.json { render json: @unit_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unit_lists/1
  # PATCH/PUT /unit_lists/1.json
  def update
    respond_to do |format|
      if @unit_list.update(unit_list_params)
        format.html { redirect_to program_analyte_unit_list_path(@program, @analyte, @unit_list), notice: 'Unit list was successfully updated.' }
        format.json { render :show, status: :ok, location: @unit_list }
      else
        format.html { render :edit }
        format.json { render json: @unit_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_lists/1
  # DELETE /unit_lists/1.json
  def destroy
    @unit_list.destroy
    respond_to do |format|
      format.html { redirect_to unit_lists_url, notice: 'Unit list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_inheritenced_vars
      if params[:program_id] != nil && params[:analyte_id] != nil
        @program = Program.find(params[:program_id])
        @analyte = Analyte.find(params[:analyte_id])
      end
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_list
      @unit_list = UnitList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unit_list_params
      params.require(:unit_list).permit(:name)
    end
end
