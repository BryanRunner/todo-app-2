class TodoController < ApplicationController
  def index
    @todos = TodoItem.all
  end

  def show
    @todo = TodoItem.find(params[:id])
  end

  def new
    @todo = TodoItem.new
  end

  def create
    @todo = TodoItem.create(todo_params)
  end

  def edit
    @todo = TodoItem.find(params[:id])
  end

  def update
    @todo = TodoItem.find(params[:id])
    @todo.update_attributes(todo_params)
    return @todo
  end

  def delete
    @todo = TodoItem.find(params[:todo_id])
  end

  def destroy
    @todo = TodoItem.find(params[:id]).destroy
  end


  private

  def todo_params
    params.require(:todo_item).permit('title', 'note', 'due_date')
  end
end
