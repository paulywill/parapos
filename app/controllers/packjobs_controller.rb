class PackjobsController < ApplicationController
  def index
    @packjobs = Packjob.paginate(page: params[:page]).order('id DESC')
    @rigs = Rig.where(rig_status: "t")
  end

  def show
    @packjob = Packjob.find(params[:id])
  end

  def new
    @packjob = Packjob.new
    #@rigs = Rig.find(:all, :conditions => { :rig_status => "t" }, :order => "rig_type_number")
    #@rigs = Rig.find_by(:id => params[:id])
    @rigs = Rig.where(rig_status: "t")
  end

  def edit
    @packjob = Packjob.find(params[:id])
    @rigs = Rig.find(:all, :conditions => { :rig_status => "t" }, :order => "rig_type_number")
  end

  def create
    @packjob = Packjob.new(packjob_params)
    @rigs = Rig.find(:all, :conditions => { :rig_status => "t" }, :order => "rig_type_number")
    if @packjob.save
      redirect_to @packjob
    else
      render 'new'
    end
  end


  def update
    @packjob = Packjob.find(params[:id])
    @rigs = Rig.find(:all, :conditions => { :rig_status => "t" }, :order => "rig_type_number")
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
      params.require(:packjob).permit(:packer, :rig)
    end

    def rigs_params
      params.require(:rig).permit(:rig_status, :rig_type_number)
    end


end
