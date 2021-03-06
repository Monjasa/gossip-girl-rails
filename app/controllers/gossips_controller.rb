class GossipsController < ApplicationController
  before_action :set_gossip, only: [:show, :edit, :update, :destroy]
  before_action :set_tags, only: [:index, :show, :new, :edit]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authenticate_editor!, only: [:edit, :update, :destroy]

  # GET /gossips
  # GET /gossips.json
  def index
    @gossip = Gossip.new
    @gossips = Gossip.all.order('created_at DESC')

    @users = User.where.not('confirmed_at' => nil)
  end

  # GET /gossips/1
  # GET /gossips/1.json
  def show
    @gossips = Gossip.all.order('created_at DESC')
    @users = User.where.not('confirmed_at' => nil)
  end

  # GET /gossips/new
  def new
    @gossip = current_user.gossips.build
  end

  # GET /gossips/1/edit
  def edit
  end

  # POST /gossips
  # POST /gossips.json
  def create
    @gossip = current_user.gossips.build(gossip_params)

    respond_to do |format|
      if @gossip.save
        format.html { redirect_to root_path, notice: t('.notice') }
        format.json { render :show, status: :created, location: @gossip }
      else
        format.html { render :new }
        format.json { render json: @gossip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gossips/1
  # PATCH/PUT /gossips/1.json
  def update
    respond_to do |format|
      if @gossip.update(gossip_params)
        format.html { redirect_to @gossip, notice: t('.notice') }
        format.json { render :show, status: :ok, location: @gossip }
      else
        format.html { render :edit }
        format.json { render json: @gossip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gossips/1
  # DELETE /gossips/1.json
  def destroy
    @gossip.destroy
    respond_to do |format|
      format.html { redirect_to gossips_url, notice: t('.notice') }
      format.json { head :no_content }
    end
  end

  private

    def authenticate_editor!
      unless helpers.is_author?(@gossip) || helpers.has_role?(:admin)
        redirect_to gossip_path
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_gossip
      @gossip = Gossip.find(params[:id])
    end

    def set_tags
      @tags = Tag.all.order('created_at ASC')
    end

    # Only allow a list of trusted parameters through.
    def gossip_params
      params.require(:gossip).permit(:message, :tag_id)
    end
end
