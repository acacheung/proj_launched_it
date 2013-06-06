class PropsController < ApplicationController
  before_filter :load_project

  # GET /props
  # GET /props.json
  def index
    @props = @project.props.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @props }
    end
  end

  # GET /props/1
  # GET /props/1.json
  def show
    @prop = @project.props.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prop }
    end
  end

  # GET /props/new
  # GET /props/new.json
  def new
    @prop = @project.props.new
    @project = @props.project

    redirect_to
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prop }
    end
  end

  # GET /props/1/edit
  def edit
    @prop = @project.props.find(params[:id])
  end

  # POST /props
  # POST /props.json
  def create
    @prop = @project.props.new(params[:prop])
    if @prop.save
      redirect_to project_path(@project), notice: 'Prop was successfully created.' 
    end
  end

  # DELETE /props/1
  # DELETE /props/1.json
  def destroy
    @prop = @project.props.find(params[:id])
    @prop.destroy

    respond_to do |format|
      format.html { redirect_to project_props_path(@project) }
      format.json { head :no_content }
    end
  end

  private

    def load_project
      @project = Project.find(params[:project_id])
    end

end
