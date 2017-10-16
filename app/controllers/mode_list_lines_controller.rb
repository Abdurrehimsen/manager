class ModeListLinesController < ApplicationController
  before_action :set_mode_list_line, only: [:show, :edit, :update, :destroy]

  # GET /mode_list_lines
  # GET /mode_list_lines.json
  def index
    @mode_list = ModeList.find(params[:data_list_id])
    @mode_list_lines = @mode_list.mode_list_lines
  end

  # GET /mode_list_lines/1
  # GET /mode_list_lines/1.json
  def show
  end

  # GET /mode_list_lines/new
  def new
    @mode_list = ModeList.find(params[:data_list_id])
    @mode_list_line = ModeListLine.new
  end

  # GET /mode_list_lines/1/edit
  def edit
    @mode_list = ModeList.find(params[:data_list_id])
  end

  # POST /mode_list_lines
  # POST /mode_list_lines.json
  def create
    @mode_list = ModeList.find(params[:data_list_id])
    @mode_list_line = ModeListLine.new(mode_list_line_params)

    respond_to do |format|
      if @mode_list_line.save
        format.html { redirect_to mode_list_mode_list_lines_url(@mode_list), notice: 'Mode list line was successfully created.' }
        format.json { render :show, status: :created, location: @mode_list_line }
      else
        format.html { render :new }
        format.json { render json: @mode_list_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mode_list_lines/1
  # PATCH/PUT /mode_list_lines/1.json
  def update
    @mode_list = ModeList.find(params[:data_list_id])
    respond_to do |format|
      if @mode_list_line.update(mode_list_line_params)
        format.html { redirect_to mode_list_mode_list_lines_url(@mode_list), notice: 'Mode list line was successfully updated.' }
        format.json { render :show, status: :ok, location: @mode_list_line }
      else
        format.html { render :edit }
        format.json { render json: @mode_list_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mode_list_lines/1
  # DELETE /mode_list_lines/1.json
  def destroy
    @mode_list = ModeList.find(params[:data_list_id])
    @mode_list_line.destroy
    respond_to do |format|
      format.html { redirect_to mode_list_mode_list_lines_url(@mode_list), notice: 'Mode list line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mode_list_line
      @mode_list_line = ModeListLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mode_list_line_params
      params.require(:mode_list_line).permit(:name)
    end
end
