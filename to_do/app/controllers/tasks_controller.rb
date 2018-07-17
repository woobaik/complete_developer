class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:notice] = "Your task has been posted."
      redirect_to task_path
    else
      flash[:notice] = " There was something wrong with your request."
      render 'new'
    end 
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
