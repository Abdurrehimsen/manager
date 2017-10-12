class DataListsController < ApplicationController
  before_action :set_data_list, only: [:show, :edit, :update, :destroy]

  # GET /data_lists
  # GET /data_lists.json
  def index
    @data_lists = DataList.all
  end

  # GET /data_lists/1
  # GET /data_lists/1.json
  def show
  end

  # GET /data_lists/new
  def new
    @data_list = DataList.new
  end

  # GET /data_lists/1/edit
  def edit
  end

  # POST /data_lists
  # POST /data_lists.json
  def create
    @data_list = DataList.new(data_list_params)

    respond_to do |format|
      if @data_list.save
        format.html { redirect_to @data_list, notice: 'Data list was successfully created.' }
        format.json { render :show, status: :created, location: @data_list }
      else
        format.html { render :new }
        format.json { render json: @data_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_lists/1
  # PATCH/PUT /data_lists/1.json
  def update
    respond_to do |format|
      if @data_list.update(data_list_params)
        format.html { redirect_to @data_list, notice: 'Data list was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_list }
      else
        format.html { render :edit }
        format.json { render json: @data_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_lists/1
  # DELETE /data_lists/1.json
  def destroy
    @data_list.destroy
    respond_to do |format|
      format.html { redirect_to data_lists_url, notice: 'Data list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_list
      @data_list = DataList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_list_params
      params.require(:data_list).permit(:name)
    end
end
