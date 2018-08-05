class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy,  :toggle_thisweek]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
  end

  def shopping
    @recipe = params[:id]
    @ingredients = Ingredient.joins(:recipe).where("recipes.thisweek = ?", true)
 #    list = ""
 #    if (@recipe != nil)
 #      list = list + "," + @recipe.to_s
 #      puts list + "string"
 #    end
 #    puts "list is" + list
 # link on shopping page to navigate back to index and not clear out ""; redirect back to index?; refer to this method in index method?  pass list out of this method to index?
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
    # @recipe.ingredients.build
    @categories = Category.all
    # @ingredients = Ingredient.all
  end

  # GET /recipes/1/edit
  def edit
    @categories = Category.all
    @recipe = Recipe.find(params[:id])
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update

    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def toggle_thisweek
    # @recipe = params[:id]
    @recipe.toggle!(:thisweek)
  end

  def thisweek
    @recipes = Recipe.where(thisweek: true)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:name, :category_id, :vegetarian, :amount, :unit, :ingredient_id, :tried, :rating, :meal_prep, :notes, :link, :avatar, :thisweek, ingredients_attributes: [:id, :name, :unit, :amount, :_destroy])
    end
end
