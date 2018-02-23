class PackersController < ApplicationController
  def index
    @packers = Packer.paginate(page: params[:page]).order('id DESC')
  end

  def show
    @packer = Packer.find(params[:id])
    @packers = Packer.all
  end

  def new
    @packer = Packer.new
  end

  def edit
    @packer = Packer.find(params[:id])
    @packers = Packer.order(:packer_type_number)
  end

  def create
    @packer = Packer.new(packer_params)
    @packers = Packer.all
    if @packer.save
      redirect_to @packer
    else
      render 'new'
    end
  end


  def update
    @packer = Packer.find(params[:id])

    if @packer.update(packer_params)
      redirect_to @packer
    else
      render 'edit'
    end
  end


  def destroy
    @packer = Packer.find(params[:id])
    @packer.destroy

    redirect_to packers_path
  end

  private
    def packer_params
      params.require(:packer).permit(:packer_status, :packer_type_number)
    end
end
