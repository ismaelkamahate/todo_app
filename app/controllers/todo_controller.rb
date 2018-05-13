class TodoController < ApplicationController
 def index
        @y = 500000
        todo_id =params[:id]
    if todo_id == '1'
        @todo_description=@todo.description
    elsif todo_id == '2'
       @todo_description='clean room'
    else
       @todo_description='clean bathroom'
    end
 end
    
    def show
        @todo =Todo.find_by_id(params[:id])
        @todo_description=@todo.description
        @todo_pomodoro_estimate=@todo.pomdoro_estimate
      @x = 16
        todo_id =params[:id]
 
    end
    def new 
    end
    def create 
    end
    def create
 t = Todo.new
 t.description = params['description']
 t.pomodoro_estimate = params['pomodoro_estimate']
 t.save
 redirect_to "/todo/show/#{ t.id }"
    end
end