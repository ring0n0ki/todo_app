class ListsController < ApplicationController
  before_action :authenticate_user!

  def index
    @lists = current_user.lists
  end

  def show
    @list = target_list params[:id]
  end

  def new
    @list = List.new
  end

  def create
    @list = current_user.lists.new list_params
    @list.save!
    redirect_to @list
  end

  def edit
    @list = target_list params[:id]
  end

  def update
    @list = target_list params[:id]
    @list.update(list_params)
    redirect_to @list
  end

  def destroy
    @list = target_list params[:id]
    @list.destroy
    redirect_to lists_url
  end

  private
  def target_list list_id
    current_user.lists.where(id: list_id).take
  end

  def list_params
    params.require(:list).permit(:title)
  end
end
