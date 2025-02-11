class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to lists_path(@list)
    else
      render :new
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    @list.update(list_params)
    redirect_to lists_path(@list)
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    
    redirect_to lists_path
  end

  private
    # Only allow a list of trusted parameters through.
    def list_params
      params.require(:list).permit(:title, :boby)
    end
end
