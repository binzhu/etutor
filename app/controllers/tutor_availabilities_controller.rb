class TutorAvailabilitiesController < ApplicationController
  # GET /tutor_availabilities
  # GET /tutor_availabilities.json
  def index
    @tutor_availabilities = TutorAvailability.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tutor_availabilities }
    end
  end

  # GET /tutor_availabilities/1
  # GET /tutor_availabilities/1.json
  def show
    @tutor_availability = TutorAvailability.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tutor_availability }
    end
  end

  # GET /tutor_availabilities/new
  # GET /tutor_availabilities/new.json
  def new
    @tutor_availability = TutorAvailability.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tutor_availability }
    end
  end

  # GET /tutor_availabilities/1/edit
  def edit
    @tutor_availability = TutorAvailability.find(params[:id])
  end

  # POST /tutor_availabilities
  # POST /tutor_availabilities.json
  def create
    @tutor_availability = TutorAvailability.new(params[:tutor_availability])

    respond_to do |format|
      if @tutor_availability.save
        format.html { redirect_to @tutor_availability, notice: 'Tutor availability was successfully created.' }
        format.json { render json: @tutor_availability, status: :created, location: @tutor_availability }
      else
        format.html { render action: "new" }
        format.json { render json: @tutor_availability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tutor_availabilities/1
  # PUT /tutor_availabilities/1.json
  def update
    @tutor_availability = TutorAvailability.find(params[:id])

    respond_to do |format|
      if @tutor_availability.update_attributes(params[:tutor_availability])
        format.html { redirect_to @tutor_availability, notice: 'Tutor availability was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tutor_availability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutor_availabilities/1
  # DELETE /tutor_availabilities/1.json
  def destroy
    @tutor_availability = TutorAvailability.find(params[:id])
    @tutor_availability.destroy

    respond_to do |format|
      format.html { redirect_to tutor_availabilities_url }
      format.json { head :no_content }
    end
  end
end
