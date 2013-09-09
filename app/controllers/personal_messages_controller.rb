class PersonalMessagesController < ApplicationController
  before_filter :authenticate_user!
  before_action :redirect_to_profile_form!
  before_action :set_personal_message, only: [:show, :edit, :update, :destroy]

  # GET /personal_messages
  # GET /personal_messages.json
  def index
    @personal_messages = PersonalMessage.all
  end

  # GET /personal_messages/1
  # GET /personal_messages/1.json
  def show
  end

  # GET /personal_messages/new
  def new
    @personal_message = PersonalMessage.new
  end

  # GET /personal_messages/1/edit
  def edit
  end

  # POST /personal_messages
  # POST /personal_messages.json
  def create
    @personal_message = PersonalMessage.new(personal_message_params)

    respond_to do |format|
      if @personal_message.save
        format.html { redirect_to @personal_message, notice: 'Personal message was successfully created.' }
        format.json { render action: 'show', status: :created, location: @personal_message }
      else
        format.html { render action: 'new' }
        format.json { render json: @personal_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_messages/1
  # PATCH/PUT /personal_messages/1.json
  def update
    respond_to do |format|
      if @personal_message.update(personal_message_params)
        format.html { redirect_to @personal_message, notice: 'Personal message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @personal_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_messages/1
  # DELETE /personal_messages/1.json
  def destroy
    @personal_message.destroy
    respond_to do |format|
      format.html { redirect_to personal_messages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_message
      @personal_message = PersonalMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_message_params
      params.require(:personal_message).permit(:timestamp, :content, :originator, :receptor, :subject)
    end
end
