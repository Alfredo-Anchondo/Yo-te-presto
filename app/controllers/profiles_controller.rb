class ProfilesController < ApplicationController
  before_action :authenticate_profile!
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)
    @requisition = Requisition.new

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @requisition.new, notice: 'Los datos se actualizaron correctamente' }
        format.json { render :new, status: :created, location: @requisition }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    @requisition = Requisition.new
    respond_to do |format|
      if @profile.update(profile_params)
        if logger.debug current_profile.requisition_pend.count > 0
          format.html { redirect_to "/requisitions/"+current_profile.requisition_pend[0].id.to_s+"/edit", notice: 'Los datos se actualizaron correctamente' }
          format.json { render :new, status: :ok, location: @requisition }
        else
          format.html { redirect_to "/requisitions/new", notice: 'Los datos se actualizaron correctamente' }
          format.json { render :new, status: :ok, location: @requisition }
        end
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:first_name, :second_name, :second_last_name, :first_last_name, :birth_date, :curp, :rfc, :gender, :birth_state, :phone_number, :email, :provider, :uid, :name, :image)
    end
end
