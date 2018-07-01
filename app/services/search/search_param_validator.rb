module Search
	
	class SearchParamValidator < ApplicationService
		
		def initialize(params)
			@category = params[:category]
			@term = params[:term]
		end

		def call
			return true unless @category && @term
		end

	end
end 