class RecipesController < ApplicationController
  #GET recipes/random
  def index
    @tag = query.fetch(:tags, 'all')
    @refresh_params = refresh_params

    @recipes, @errors = Spoonacular::Recipe.random(query)
  end
  #GET recipes/:id/information
  def show
    @recipe = Spoonacular::Recipe.find(params[:id])
  end

  private
  def query
    #fetch(key_name, default_value): get the value if the key exists, return default_value otherwise
    params.fetch(:query, {})
  end
  def clear_cache
    params[:clear_cache].present?
  end

  def refresh_params
    refresh = { clear_cache: true }
    refresh.merge!({ query: query }) if query.present?
    refresh
  end
end
