class SteppiesController < ApplicationController
  # GET /steppies
  # GET /steppies.json
  def index
    @steppies = Steppy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @steppies }
    end
  end

  

  # GET /steppies/1
  # GET /steppies/1.json
  def show
    @steppy = Steppy.find(params[:id])
    @relationship = Relationship.new
    @flagon = (params[:flagon])
    


    if @steppy.userid.present?
      params[:userid] = User.where(:username => @steppy.userid)
      @user = User.find(params[:userid])
    end


    

    if @flagon == "flag"
      FlagMailer.flag_email(@steppy).deliver
      flash[:notice] = "Steppy Flagged"
    else
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @steppy }
    end

    
  end

  # GET /steppies/new
  # GET /steppies/new.json
  def new
    @steppy = Steppy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @steppy }
    end
  end

  def ask
    @steppy = Steppy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @steppy }
    end
  end

  # GET /steppies/1/edit
  def edit
    @steppy = Steppy.find(params[:id])
  end

  # POST /steppies
  # POST /steppies.json
  def create
    @steppy = Steppy.new(params[:steppy])
    if current_user 
      @steppy.userid = current_user.username
    else
      @steppy.userid = "Anonymous"
    end

    respond_to do |format|
      if @steppy.save
        format.html { redirect_to @steppy, notice: 'Steppy Was Successfully Created.' }
        format.json { render json: @steppy, status: :created, location: @steppy }
      else
        format.html { render action: "new" }
        format.json { render json: @steppy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /steppies/1
  # PUT /steppies/1.json
  def update
    @steppy = Steppy.find(params[:id])

    respond_to do |format|
      if @steppy.update_attributes(params[:steppy])
        format.html { redirect_to @steppy, notice: 'Steppy Was Successfully Updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @steppy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steppies/1
  # DELETE /steppies/1.json
  def destroy
    @steppy = Steppy.find(params[:id])
    @steppy.destroy

    respond_to do |format|
      format.html { redirect_to steppies_url }
      format.json { head :no_content }
    end
  end

  def searchresult
    @steppy = Steppy.new
  end

end
