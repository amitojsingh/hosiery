class Master::TasksController < ApplicationController
  before_action :set_master_task, only: [:show, :edit, :update, :destroy]

  # GET /master/tasks
  # GET /master/tasks.json
  def index
    @master_tasks = Master::Task.all
  end

  # GET /master/tasks/1
  # GET /master/tasks/1.json
  def show
  end

  # GET /master/tasks/new
  def new
    @master_task = Master::Task.new
  end

  # GET /master/tasks/1/edit
  def edit
  end

  # POST /master/tasks
  # POST /master/tasks.json
  def create
    @master_task = Master::Task.new(master_task_params)

    respond_to do |format|
      if @master_task.save
        format.html { redirect_to @master_task, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @master_task }
      else
        format.html { render :new }
        format.json { render json: @master_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master/tasks/1
  # PATCH/PUT /master/tasks/1.json
  def update
    respond_to do |format|
      if @master_task.update(master_task_params)
        format.html { redirect_to @master_task, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_task }
      else
        format.html { render :edit }
        format.json { render json: @master_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master/tasks/1
  # DELETE /master/tasks/1.json
  def destroy
    @master_task.destroy
    respond_to do |format|
      format.html { redirect_to master_tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_task
      @master_task = Master::Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_task_params
      params.require(:master_task).permit(:taskname)
    end
end
