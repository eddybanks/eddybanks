class SkillComponentsController < ApplicationController
  before_action :set_skill_component, only: [:show, :edit, :update, :destroy]

  # GET /skill_components
  # GET /skill_components.json
  def index
    @skill_components = SkillComponent.all
  end

  # GET /skill_components/1
  # GET /skill_components/1.json
  def show
  end

  # GET /skill_components/new
  def new
    @skill_component = SkillComponent.new
  end

  # GET /skill_components/1/edit
  def edit
  end

  # POST /skill_components
  # POST /skill_components.json
  def create
    @skill_component = SkillComponent.new(skill_component_params)

    respond_to do |format|
      if @skill_component.save
        format.html { redirect_to @skill_component, notice: 'Skill component was successfully created.' }
        format.json { render :show, status: :created, location: @skill_component }
      else
        format.html { render :new }
        format.json { render json: @skill_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skill_components/1
  # PATCH/PUT /skill_components/1.json
  def update
    respond_to do |format|
      if @skill_component.update(skill_component_params)
        format.html { redirect_to @skill_component, notice: 'Skill component was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill_component }
      else
        format.html { render :edit }
        format.json { render json: @skill_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_components/1
  # DELETE /skill_components/1.json
  def destroy
    @skill_component.destroy
    respond_to do |format|
      format.html { redirect_to skill_components_url, notice: 'Skill component was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_component
      @skill_component = SkillComponent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_component_params
      params.require(:skill_component).permit(:name, :description)
    end
end
