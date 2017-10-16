class ModeListsController < ApplicationController
  before_action :set_mode_list, only: [:show, :edit, :update, :destroy]
  before_action :set_inheritenced_vars, only: [:show, :edit, :create, :update, :destroy]

  # GET /mode_lists
  # GET /mode_lists.json
  def index
    @mode_lists = ModeList.all
  end

  # GET /mode_lists/1
  # GET /mode_lists/1.json
  def show
  end

  # GET /mode_lists/new
  def new
    @mode_list = ModeList.new
  end

  # GET /mode_lists/1/edit
  def edit
  end

  # POST /mode_lists
  # POST /mode_lists.json
  def create
    @mode_list = ModeList.new(mode_list_params)

    respond_to do |format|
      if @mode_list.save
        if params[:program_id] != nil
          @analyte.mode_list_id = @mode_list.id
          @analyte.save        
          format.html { redirect_to program_analyte_mode_list_path(@program, @analyte, @mode_list), notice: 'Mode list was successfully created.' }
          format.json { render :show, status: :created, location: [@program, @analyte, @mode_list] }
        else
          format.html { redirect_to mode_list_path(@mode_list), notice: 'Mode list was successfully created.' }
          format.json { render :show, status: :created, location: @mode_list }
        end
      else
        format.html { render :new }
        format.json { render json: @mode_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mode_lists/1
  # PATCH/PUT /mode_lists/1.json
  def update
    respond_to do |format|
      if @mode_list.update(mode_list_params)
        if params[:program_id] != nil
          format.html { redirect_to program_analyte_mode_list_path(@program, @analyte, @mode_list), notice: 'Mode list was successfully updated.' }
          format.json { render :show, status: :ok, location: [@program, @analyte, @mode_list] }
        else
          format.html { redirect_to mode_list_path(@mode_list), notice: 'Mode list was successfully updated.' }
          format.json { render :show, status: :created, location: @mode_list }
        end
      else
        format.html { render :edit }
        format.json { render json: @mode_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mode_lists/1
  # DELETE /mode_lists/1.json
  def destroy
    @mode_list.destroy
    respond_to do |format|
      if params[:program_id] != nil
        format.html { redirect_to program_analytes_url(@program), notice: 'Mode list was successfully destroyed.' }
        format.json { head :no_content }
      else
        format.html { redirect_to mode_lists_url, notice: 'Mode list was successfully destroyed.' }
        format.json { head :no_content }
      end

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
    def set_mode_list
      @mode_list = ModeList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mode_list_params
      params.require(:mode_list).permit(:name)
    end
end
