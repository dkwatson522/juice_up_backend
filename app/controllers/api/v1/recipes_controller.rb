module Api::V1
  class RecipesController < ApplicationController
    before_action :set_recipe, only: [:show, :update, :destroy]

    # GET /api/v1/recipes
    def index
      @recipes = Recipe.all
    end

    # GET /api/v1/recipes/:id
    def show
    end

    # POST /api/v1/recipes
    def create
      @recipe = Recipe.new(recipe_params)
      if @recipe.save
        render :show, status: :created, location: api_v1_recipe_url(@recipe)
      else
        render json: @recipe.errors, status: :unprocessable_entity
      end
    end

    # PUT /api/v1/recipes/:id
    def update
      if @recipe.update(recipe_params)
        render :show, status: :ok, location: api_v1_recipe_url(@recipe)
      else
        render json: @recipe.errors, status: :unprocessable_entity
      end
    end

    # DELETE /api/v1/recipes/:id
    def destroy
      @recipe.destroy
      head :no_content
    end

    private

    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(:name, ingredients_attributes: [:id, :name, :amount, :unit, :_destroy])
    end
  end
end
