class DataListLinesController < ApplicationController
  before_action :set_data_list_line, only: [:show, :edit, :update, :destroy]
  before_action :set_inheritenced_vars, only: [:index, :show, :new, :edit, :create, :update, :destroy]


  # GET /data_list_lines
  # GET /data_list_lines.json
  def index
    @data_list_lines = @data_list.data_list_lines
  end

  # GET /data_list_lines/1
  # GET /data_list_lines/1.json
  def show
  end

  # GET /data_list_lines/new
  def new
    @data_list_line = @data_list.data_list_lines.build
  end

  # GET /data_list_lines/1/edit
  def edit
  end

  # POST /data_list_lines
  # POST /data_list_lines.json
  def create
    @data_list_line = @data_list.data_list_lines.build(data_list_line_params)

    respond_to do |format|
      if @data_list_line.save
        format.html { redirect_to data_list_data_list_lines_url(@data_list), notice: 'Data list line was successfully created.' }
        format.json { render :show, status: :created, location: [@data_list, @data_list_line] }
      else
        format.html { render :new }
        format.json { render json: @data_list_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_list_lines/1
  # PATCH/PUT /data_list_lines/1.json
  def update
    @data_list = DataList.find(params[:data_list_id])
    respond_to do |format|
      if @data_list_line.update(data_list_line_params)
        format.html { redirect_to data_list_data_list_lines_url(@data_list), notice: 'Data list line was successfully updated.' }
        format.json { render :show, status: :ok, location: [@data_list, @data_list_line] }
      else
        format.html { render :edit }
        format.json { render json: @data_list_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_list_lines/1
  # DELETE /data_list_lines/1.json
  def destroy
    @data_list_line.destroy
    respond_to do |format|
      format.html { redirect_to data_list_data_list_lines_url(@data_list), notice: 'Data list line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_inheritenced_vars
      @data_list = DataList.find(params[:data_list_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_data_list_line
      @data_list_line = DataListLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_list_line_params
      params.require(:data_list_line).permit(:value)
    end
end
