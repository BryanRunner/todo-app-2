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
    respond_to do |format|
        format.js { flash.now[:notice] = "Created Successfully"}
    end
  end

  def edit
    @todo = TodoItem.find(params[:id])
  end

  def update
    @todo = TodoItem.find(params[:id])
    @todo.update_attributes(todo_params)
      respond_to do |format|
        format.js { flash.now[:notice] = "Updated Successfully"}
      end
    return @todo
  end

  def delete
    @todo = TodoItem.find(params[:todo_id])
  end

  def destroy
    @todo = TodoItem.find(params[:id]).destroy
    respond_to do |format|
        format.js { flash.now[:notice] = "Deleted Successfully"}
    end
  end


  private

  def todo_params
    params.require(:todo_item).permit('title', 'note', 'due_date')
  end
end
