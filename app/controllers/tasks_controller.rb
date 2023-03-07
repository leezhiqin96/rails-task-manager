class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    if @task.completed == false
      @label = 'This task is not completed yet'
      @label
    else
      @label = 'This task is completed'
    end
  end
end
