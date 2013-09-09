class NewsItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :redirect_to_profile_form!
  before_action :set_group, only: [:show, :edit, :update, :destroy, :create, :new]
  before_action :set_news_item, only: [:show, :edit, :update, :destroy]
  before_action :check_owner!, only: [:new, :create, :update, :destroy, :show, :edit]


  def check_owner!
    unless @group.gamemaster.id == current_user.profile.id 
      render :status => :forbidden, :text => "Nope, that's not yours"
    end
  end

  # GET /news_items
  # GET /news_items.json
  def index
    @news_items = NewsItem.all
  end

  # GET /news_items/1
  # GET /news_items/1.json
  def show
  end

  # GET /news_items/new
  def new
    @news_item = NewsItem.new
  end

  # GET /news_items/1/edit
  def edit
  end

  # POST /news_items
  # POST /news_items.json
  def create
    @news_item = @group.news_items.new(news_item_params)
    
    respond_to do |format|
      if @news_item.save
        format.html { redirect_to @group, notice: 'News item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @news_item }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /news_items/1
  # PATCH/PUT /news_items/1.json
  def update
    respond_to do |format|
      if @news_item.update(news_item_params)
        format.html { redirect_to @news_item.group, notice: 'News item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @news_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_items/1
  # DELETE /news_items/1.json
  def destroy
    @news_item.destroy
    respond_to do |format|
      format.html { redirect_to @news_item.group }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group 
      @group = Group.find(params[:group_id])
    end
    
    def set_news_item
      @news_item = @group.news_items.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_item_params
      # keine lust sachen zu whitelisten. alles durchlassen!!!
      params.require(:news_item).permit!
    end
end
