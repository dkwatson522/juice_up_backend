module Api::V1
  class IngredientsController < ApplicationController
    before_action :set_ingredient, only: [:destroy, :show, :update]

    # GET /api/v1/ingredients
    def index
      @ingredients = Ingredient.all
    end

    # GET /api/v1/ingredients/:id
    def show
    end

    # POST /api/v1/ingredients
    def create
      @ingredient = Ingredient.new(ingredient_params)
      if @ingredient.save
        render :show, status: :created, location: @ingredient
      else
        render json: @ingredient.errors, status: :unprocessable_entity
      end
    end

    # PUT /api/v1/ingredients/:id
    def update
      if @ingredient.update(ingredient_params)
        render :show, status: :ok, location: @ingredient
      else
        render json: @ingredient.errors, status: :unprocessable_entity
      end
    end

    # DELETE /api/v1/ingredients/:id
    def destroy
      @ingredient.destroy
      head :no_content
    end

    private

    def set_ingredient
      @ingredient ||= Ingredient.find(params[:id])
    end

    def ingredient_params
      params.require(:ingredient).permit(:name)
    end
  end
end
