 # random and find methods
 # that will use Request class to make
 # these two requests.
 # also need to override the initialization
 # method, in order to parse the
 # ingredients and instructions that
 #  come in the HTTP response.

 class Spoonacular

   class Recipe < Base

    attr_accesor :aggregate_likes,
                  :dairy_free,
                  :gluten_free,
                  :id,
                  :image.
                  :ingredients,
                  :intstructions,
                  :ready_in_minutes,
                  :title,
                  :vegan,
                  :vegetarian
    MAX_LIMIT = 12

    def self.random(query = {})
      #a.merge(b)
      response = Request.where('recipes/random', query.merge({number: MAX_LIMIT}))
      recipes = response.fetch('recipes', []).map { |recipe| Recipe.new(recipe)}
      [recipes,response[:errors]]
    end

    def self.find(id)
      response = Request.get
    end

    def initialize(args = {})
    end

    def parse_ingredients(args={})
    end

    def parse_instructions(args={})
    end
   end
 end
