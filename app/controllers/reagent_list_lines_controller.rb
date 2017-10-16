class ReagentListLinesController < ApplicationController
  before_action :set_reagent_list_line, only: [:show, :edit, :update, :destroy]

  # GET /reagent_list_lines
  # GET /reagent_list_lines.json
  def index
    @reagent_list = ReagentList.find(params[:reagent_list_id])
    @reagent_list_lines = @reagent_list.reagent_list_lines
  end

  # GET /reagent_list_lines/1
  # GET /reagent_list_lines/1.json
  def show
  end

  # GET /reagent_list_lines/new
  def new
    @reagent_list = ReagentList.find(params[:reagent_list_id])
    @reagent_list_line = ReagentListLine.new
  end

  # GET /reagent_list_lines/1/edit
  def edit
    @reagent_list = ReagentList.find(params[:reagent_list_id])
  end

  # POST /reagent_list_lines
  # POST /reagent_list_lines.json
  def create
    @reagent_list = ReagentList.find(params[:reagent_list_id])
    @reagent_list_line = ReagentListLine.new(reagent_list_line_params)

    respond_to do |format|
      if @reagent_list_line.save
        format.html { redirect_to reagent_list_reagent_list_lines_url(@reagent_list), notice: 'Reagent list line was successfully created.' }
        format.json { render :show, status: :created, location: @reagent_list_line }
      else
        format.html { render :new }
        format.json { render json: @reagent_list_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reagent_list_lines/1
  # PATCH/PUT /reagent_list_lines/1.json
  def update
    @reagent_list = ReagentList.find(params[:reagent_list_id])
    respond_to do |format|
      if @reagent_list_line.update(reagent_list_line_params)
        format.html { redirect_to reagent_list_reagent_list_lines_url(@reagent_list), notice: 'Reagent list line was successfully updated.' }
        format.json { render :show, status: :ok, location: @reagent_list_line }
      else
        format.html { render :edit }
        format.json { render json: @reagent_list_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reagent_list_lines/1
  # DELETE /reagent_list_lines/1.json
  def destroy
    @reagent_list = ReagentList.find(params[:reagent_list_id])
    @reagent_list_line.destroy
    respond_to do |format|
      format.html { redirect_to reagent_list_reagent_list_lines_url(@reagent_list), notice: 'Reagent list line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reagent_list_line
      @reagent_list_line = ReagentListLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reagent_list_line_params
      params.require(:reagent_list_line).permit(:name)
    end
end
