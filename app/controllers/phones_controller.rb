class PhonesController < ApplicationController
  before_action :set_phone, only: [:show, :edit, :update, :destroy]
  before_action :set_person

  # GET /phones
  # GET /phones.json
  def index
    @phones = Phone.all
  end

  # GET /phones/1
  # GET /phones/1.json
  def show
  end

  # GET /phones/new
  def new
    @phone = Phone.new
  end

  # GET /phones/1/edit
  def edit
  end

  # POST /phones
  # POST /phones.json
  def create
    @phone = Phone.new(phone_params)

    respond_to do |format|
      if @phone.save
        format.html { redirect_to @person, notice: "Phone was successfully created." }
        format.json { render :show, status: :created, location: @phone }
        
      else
        format.html { render :new }
        format.json { render json: @phone.errors, status: :unprocessable_entity }
        format.js { render partial: "form", locals: { phone_number: @phone } }
      end
    end
  end

  # PATCH/PUT /phones/1
  # PATCH/PUT /phones/1.json
  def update
    respond_to do |format|
      if @phone.update(phone_params)
        format.html { redirect_to @person, notice: "Phone was successfully updated." }
        format.json { render :show, status: :ok, location: @phone }
      else
        format.html { render :edit }
        format.json { render json: @phone.errors, status: :unprocessable_entity }
        format.js { render partial: "form", locals: { phone_number: @phone } }
      end
    end
  end

  # DELETE /phones/1
  # DELETE /phones/1.json
  def destroy
    @phone.destroy
    respond_to do |format|
      format.html { redirect_to @person, notice: "Phone was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone
      @phone = Phone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def phone_params
      params.require(:phone).permit(:phone_number, :comment, :person_id)
    end

    def set_person
      @person = Person.find(params[:person_id])
    end
end
