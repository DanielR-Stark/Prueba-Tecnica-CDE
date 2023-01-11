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
    if @cit.save
      redirect_to
    else
      render :new
    end
  end

  def update
    if @cit.update(cit_params)
      redirect_to
    else
      render :edit
    end
  end

  def destroy
    @cit = Cit.find(params[:id])
    @cit.destroy
    redirect_to
  end

  private

  def set_cit
    @cit = Cit.find(params[:id])
  end

  def cit_params
    params.require(:cit).permit(:fecha, :hora, :diagnostico, :activo)
  end
end
