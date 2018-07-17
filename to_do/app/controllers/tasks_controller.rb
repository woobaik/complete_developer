class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find_by_id(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:notice] = "Your task has been posted."
      redirect_to task_path(@task)
    else
      flash.now[:notice] = " There was something wrong with your request."
      render 'new'
    end
  end

  def edit
    @task = Task.find_by_id(params[:id])
  end

  def update
    @task = Task.find_by_id(params[:id])
    if @task.update(task_params)
      flash[:notice] = "Your task has been updated."
      redirect_to task_path(@task)
    else
      flash.now[:notice] = "There was something wrong with updating the task."
      render 'edit'
    end
  end

  def destroy
    @task = Task.find_by_id(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def complete
    @task = Task.find_by_id(params[:id])
    @task.update_attribute(:completed, params[:completed])
    redirect_back(fallback_location: root_path)

  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :completed)
  end
end
