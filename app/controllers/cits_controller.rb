class CitsController < ApplicationController
  def index
    @cits = Cit.all
  end

  def show
    @cit = Cit.find(params[:id])
  end

  def new
    @cit = Cit.new
  end

  def edit
    @cit = Cit.find(params[:id])
  end

  def create
    @cit = Cit.new(cit_params)
    @cit.activo = 1
    if @cit.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    @cit = Cit.find(params[:id])
    if @cit.update(cit_params)
      redirect_to cit_path(@cit)
    else
      render :edit
    end
  end

  def destroy
    @cit = Cit.find(params[:id])
    @cit.destroy
    redirect_to cits_path
  end

  private

  def set_cit
    @cit = Cit.find(params[:id])
  end

  def cit_params
    params.require(:cit).permit(:fecha, :hora, :diagnostico, :activo)
  end
end
