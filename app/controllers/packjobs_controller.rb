class PackjobsController < ApplicationController

  def index
    @packjobs = Packjob.paginate(page: params[:page]).order('id DESC')
    #@rigs = Rig.where(rig_type_number: (packjobs:rig_id) )
    @rigs = Rig.where(rig_status: "t")
  end

  def show
    @packjob = Packjob.find(params[:id])
    @rig = Rig.find(@packjob.rig_id)
  end

  def new
    @packjob = Packjob.new
    @rigs = Rig.where(rig_status: "t")
  end

  def edit
    @packjob = Packjob.find(params[:id])
    @rigs = Rig.where(rig_status: "t")
  end

  def create
    @packjob = Packjob.new(packjob_params)
    @rigs = Rig.where(rig_status: "t")
    if @packjob.save
      redirect_to @packjob
    else
      render 'new'
    end
  end


  def update
    @packjob = Packjob.find(params[:id])
    @rigs = Rig.where(rig_status: "t")
    if @packjob.update(packjob_params)
      redirect_to @packjob
    else
      render 'edit'
    end
  end


  def destroy
    @packjob = Packjob.find(params[:id])
    @packjob.destroy

    redirect_to packjobs_path
  end

  private
    def packjob_params
      params.require(:packjob).permit(:packer, :rig_id)
    end

    def rigs_params
      params.require(:rig).permit(:rig_status, :rig_type_number)
    end


end
