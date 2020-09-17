class DogsController < ApplicationController
    
    def index
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find(params[:id])
    end

    def create
        @dog = Dog.create(dog_params)
        @dog.save
        redirect_to dog_path(@dog)
    end

    def new
        @dog = Dog.new
    end

    def edit
        
    end

    def update
        @dog = Dog.update(dog_params)
        @dog.save
        redirect_to dog_path(@dog)
    end


private

    def dog_params
    params.require(:dog).permit(:name, :breed, :age)

    end


end
