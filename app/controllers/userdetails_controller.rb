class UserdetailsController < ApplicationController
  before_action :set_userdetail, only: %i[ show edit update destroy ]

  # GET /userdetails or /userdetails.json
  def index
    @userdetails = Userdetail.all
  end

  # GET /userdetails/1 or /userdetails/1.json
  def show
  end

  # GET /userdetails/new
  def new
    @userdetail = Userdetail.new
  end

  # GET /userdetails/1/edit
  def edit
  end

  # POST /userdetails or /userdetails.json
  def create
    @userdetail = Userdetail.new(userdetail_params)

    respond_to do |format|
      if @userdetail.save
        format.html { redirect_to userdetail_url(@userdetail), notice: "Userdetail was successfully created." }
        format.json { render :show, status: :created, location: @userdetail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @userdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userdetails/1 or /userdetails/1.json
  def update
    respond_to do |format|
      if @userdetail.update(userdetail_params)
        format.html { redirect_to userdetail_url(@userdetail), notice: "Userdetail was successfully updated." }
        format.json { render :show, status: :ok, location: @userdetail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @userdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userdetails/1 or /userdetails/1.json
  def destroy
    @userdetail.destroy

    respond_to do |format|
      format.html { redirect_to userdetails_url, notice: "Userdetail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userdetail
      @userdetail = Userdetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def userdetail_params
      params.require(:userdetail).permit(:name, :address, :age, :email, :location, :gender, :phone, :skills, :gegree, :college, :password_digest, :about, :position, :desired_pay, :language, :programming_language, :cgpa, :achievement, :project)
    end
end
