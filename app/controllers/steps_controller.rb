class StepsController < ApplicationController
  before_action :set_step, only: [:show, :edit, :update, :destroy]

  # GET /steps
  def index
    @steps = Step.all
  end

  # GET /steps/1
  def show
    redirect_to steps_path if @step.access === false
  end

  # GET /steps/new
  def new
    @step = Step.new
  end

  # GET /steps/1/edit
  def edit
  end

  # POST /steps
  def create
    @step = Step.new(step_params)
    if @step.save
      redirect_to @step, notice: 'Step was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /steps/1
  def update
    if @step.update(step_params)
      redirect_to @step, notice: 'Step was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /steps/1
  def destroy
    @step.destroy
    redirect_to steps_url, notice: 'Step was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step
      @step = Step.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_params
      params.require(:step).permit(:title, :description, :access, :image)
    end
end
