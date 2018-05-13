class TodoController < ApplicationController
 def index
        @todos=Tdodo.all
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
        @todo_pomdoro_estimate=@todo.pomdoro_estimate
      @x = 16
        todo_id =params[:id]
    end
    
    
    def new 
    end
    
    def create
     t = Todo.new
     t.description = params['description']
     t.pomdoro_estimate = params['pomdro_estimate']
     t.save
     redirect_to "/todo/show/#{ t.id }"
    end

 def edit
     @todo=Todo.find_by_id(params[:id])
 end
 
 
 
 
 def update
     t=Todo.find_by_id(params[:id])
     t.description=params['description']
     t.pomdoro_estimate=params['pomdoro_estimate']
     t.save
     redirect_to "/todo/show/#{t.id}"
 end
 
 

 
 def destroy
     t = Todo.find_by_id(params[:id])
     t.destroy
     redirect_to “/todo/index”
 end
 
end