class GunsController < ApplicationController
  before_action :set_gun, only: [:update, :edit, :show]

  def index
    @guns=Gun.all
  end

  def new
    @gun=Gun.new
  end

  def create
    @gun=Gun.new(gun_params)
    if @gun.save
      flash[:notice] = "Gun has successfully been added"
      redirect_to @gun
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @gun.update
      flash[:notice] = "Gun has been successfully updated"
      redirect_to @gun
    else
      render :edit
    end
  end

  def destroy
    gun=Gun.find(params[:id])
    if gun.destroy
      flash[:notice] = "You have successfully removed a gun"
      redirect_to guns_path
    end
  end

  private

  def get_gun
    @gun=Gun.find(params[:id])
  end

  def gun_params
    params.require(:gun).permit(:name, :manufacturer, :caliber)
  end

end
