class SearchController < ApplicationController

include Response

	before_action :check_search_params, only: [:search]

	def search
		result = Search::Searcher.call(params)
		json_response(result)
	end

	private

	def check_search_params
		not_valid_params = Search::SearchParamValidator.call(params)
		if not_valid_params
			json_response("Either category or term must be supplied", 422)
		end
	end

end