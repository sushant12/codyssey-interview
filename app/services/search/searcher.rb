module Search
	
	class Searcher < ApplicationService

		def initialize(params)
			@category = params[:category]
			@term = params[:term]			
		end

		def call
			if @category || @term
				"Codyssey::OnlineShop.search"
			end
		end
	end
end 