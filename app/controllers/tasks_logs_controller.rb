class TasksLogsController < ApplicationController
  before_action :set_tasks_log, only: [:show, :edit, :update, :destroy]

  # GET /tasks_logs
  # GET /tasks_logs.json
  def index
    @tasks_logs = TasksLog.all
  end

  # GET /tasks_logs/1
  # GET /tasks_logs/1.json
  def show
  end

  # GET /tasks_logs/new
  def new
    @tasks_log = TasksLog.new
  end

  # GET /tasks_logs/1/edit
  def edit
  end

  # POST /tasks_logs
  # POST /tasks_logs.json
  def create
    @tasks_log = TasksLog.new
    @tasks_log.start_date = Time.now
    # @task = Task.find_by(id: params[:task_id])
    @tasks_log.task_id = params[:task_id]
    @tasks_log.user_id = current_user.id
    #! check params for task_id, and find by id

    respond_to do |format|
      if @tasks_log.save
        format.html { redirect_to task_path(@tasks_log.task), notice: 'Tasks log was successfully created.' }
        format.json { render :show, status: :created, location: @tasks_log }
      else
        format.html { render :new }
        format.json { render json: @tasks_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks_logs/1
  # PATCH/PUT /tasks_logs/1.json
  def update
    @tasks_log = TasksLog.find(params[:id])
    @task = @tasks_log.task
    @tasks_log.end_date = Time.now
    @tasks_log.duration = @tasks_log.end_date - @tasks_log.start_date

    respond_to do |format|
      if @tasks_log.save
        format.html { redirect_to task_path(@task), notice: 'Tasks log was successfully updated.' }
        format.json { render :show, status: :ok, location: @tasks_log }
      else
        format.html { render :edit }
        format.json { render json: @tasks_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks_logs/1
  # DELETE /tasks_logs/1.json
  def destroy
    @tasks_log.destroy
    respond_to do |format|
      format.html { redirect_to tasks_logs_url, notice: 'Tasks log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tasks_log
      @tasks_log = TasksLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tasks_log_params
      # params.fetch(:tasks_log, {})
      params.require(:task_log).permit(:start_date, :end_date)
    end
end
