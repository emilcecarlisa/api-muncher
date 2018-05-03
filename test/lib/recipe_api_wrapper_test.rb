require "test_helper"

# Note You will also need to place the VCR.use_cassette block around your controller tests as well. Otherwise your controller tests, which use the API will fail.

describe "Recipes" do
	describe "search" do
		it "returns results from search" do
			VCR.use_cassette("recipes") do
						recipes = RecipeApiWrapper.search_recipes("chicken")

						recipes.each do |recipe|
							recipe.must_be_kind_of Recipe
						end
					end
		end
	end

	# describe "list_recipes" do
	# 	it "lists recipes based on search" do
	# 		VCR.use_cassette("recipes") do
	# 			recipes = RecipeApiWrapper.list_recipes
	#
	# 			recipes.each do |recipe|
	# 				recipe.must_be_kind_of Recipe
	# 			end
	# 		end
	# 	end
	# end
end