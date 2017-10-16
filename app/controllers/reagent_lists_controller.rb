class ReagentListsController < ApplicationController
  before_action :set_reagent_list, only: [:show, :edit, :update, :destroy]
  before_action :set_inheritenced_vars, only: [:show, :edit, :create, :update, :destroy]

  # GET /reagent_lists
  # GET /reagent_lists.json
  def index
    @reagent_lists = ReagentList.all
  end

  # GET /reagent_lists/1
  # GET /reagent_lists/1.json
  def show
  end

  # GET /reagent_lists/new
  def new
    @program = Program.find(params[:program_id])
    @analyte = Analyte.find(params[:analyte_id])
    @reagent_list = ReagentList.new
  end

  # GET /reagent_lists/1/edit
  def edit
    @program = Program.find(params[:program_id])
    @analyte = Analyte.find(params[:analyte_id])
    @reagent_list = @analyte.unit_list
  end

  # POST /reagent_lists
  # POST /reagent_lists.json
  def create
    @program = Program.find(params[:program_id])
    @analyte = Analyte.find(params[:analyte_id])
    @reagent_list = ReagentList.new(reagent_list_params)

    respond_to do |format|
      if @reagent_list.save
        @analyte.reagent_list_id = @reagent_list.id
        @analyte.save
        format.html { redirect_to program_analyte_reagent_list_path(@program, @analyte, @reagent_list), notice: 'Reagent list was successfully created.' }
        format.json { render :show, status: :created, location: @reagent_list }
      else
        format.html { render :new }
        format.json { render json: @reagent_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reagent_lists/1
  # PATCH/PUT /reagent_lists/1.json
  def update
    @program = Program.find(params[:program_id])
    @analyte = Analyte.find(params[:analyte_id])
    respond_to do |format|
      if @reagent_list.update(reagent_list_params)
        format.html { redirect_to program_analyte_reagent_list_path(@program, @analyte, @reagent_list), notice: 'Reagent list was successfully updated.' }
        format.json { render :show, status: :ok, location: @reagent_list }
      else
        format.html { render :edit }
        format.json { render json: @reagent_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reagent_lists/1
  # DELETE /reagent_lists/1.json
  def destroy
    @reagent_list.destroy
    respond_to do |format|
      format.html { redirect_to program_analyte_reagent_list_path(@program, @analyte, @reagent_list), notice: 'Reagent list was successfully destroyed.' }
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
    def set_reagent_list
      @reagent_list = ReagentList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reagent_list_params
      params.require(:reagent_list).permit(:name)
    end
end
