class TodoController < ApplicationController
 def index
        @y = 500000
        todo_id =params[:id]
    if todo_id == '1'
        @todo_description='Walk dog'
    elsif todo_id == '2'
       @todo_description='clean room'
    else
       @todo_description='clean bathroom'
    end
 end
    
    def show
      @x = 16
        todo_id =params[:id]
    if todo_id == '1'
        @todo_description='Walk dog'
    elsif todo_id == '2'
       @todo_description='clean room'
    else
       @todo_description='clean bathroom'
    end
    end
end