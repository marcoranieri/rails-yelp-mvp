class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    redirect_to restaurants_path
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

end





# class TasksController < ApplicationController

#   def index
#     @tasks = Task.all
#   end

#   def show
#     @task = Task.find(params[:id])
#   end

#   def new
#     @task = Task.new
#   end

#   def create
#     @task = Task.new(task_params)
#     @task.save

#     redirect_to tasks_path
#   end

#   def edit
#     @task = Task.find(params[:id])
#   end

#   def update
#     @task = Task.find(params[:id])
#     @task.update(task_params)

#     redirect_to tasks_path
#   end

#   def destroy
#     @task = Task.find(params[:id])
#     @task.destroy

#     redirect_to tasks_path
#   end

# private

#   def task_params
#     params.require(:task).permit(:title, :details, :completed)
#   end
# end
