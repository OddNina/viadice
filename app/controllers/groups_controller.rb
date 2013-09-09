class GroupsController < ApplicationController
  before_filter :authenticate_user!
  before_action :redirect_to_profile_form!
  before_action :set_group, only: [:show, :edit, :update, :destroy, :join, :leave]
  before_action :check_owner!, only: [:edit, :update, :destroy]

  def check_owner!
    unless @group.gamemaster.id == current_user.profile.id 
      render :status => :forbidden, :text => "Nope, that's not yours"
    end
  end


  # GET /groups
  # GET /groups.json
  def index
    @q = Group.search(params[:q])
    @groups = @q.result(distinct: true)
  end

  def search
    index
    render :index
  end


  # GET /groups/1
  # GET /groups/1.json
  def show
    @membership = Membership.find_by(profile_id: current_user.profile.id, group_id: @group.id)
    unless @membership
      @membership = Membership.new(group:@group, profile:current_user.profile)
    end
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  def join
    @group.profiles << current_user.profile
    if @group.save
      redirect_to @group, notice: "Joined Group"
    else
      redirect_to @group
    end
  end

  def leave
    @group.profiles.delete(current_user.profile)
    redirect_to @group, notice: "Left Group"
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = current_user.profile.own_groups.new(group_params)
    @group.profiles << current_user.profile

    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, notice: 'Group was successfully created.' }
        format.json { render action: 'show', status: :created, location: @group }
      else
        format.html { render action: 'new' }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit!
    end
end
