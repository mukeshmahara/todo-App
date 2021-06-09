class TodoController < ApplicationController
   
    def index
        @todo  = Todolist.all
    end

    def show
        @todo = Todolist.find(params[:id])
        # redirect_to show_todo_path
    end

    def new
        @todo = Todolist.new

    end


    def create 
        puts "hello world"
        @todo = Todolist.new(params.require(:todo).permit(:description))
        if @todo.save
            redirect_to todo_index_path
        else
            render :new
        end
    end

    def update 
        @todo = Todolist.find(params[:id]).update(params.require(:todo).permit(:description))


        if @todo
            redirect_to todo_index_path
        else
            render :update
        end
    end


    def edit
        @todo = Todolist.find(params[:id])
    end
    def destroy
        puts params[:id], Todolist
            @todo=Todolist.find(params[:id]).delete
            redirect_to todo_index_path
    end
    

    

end
