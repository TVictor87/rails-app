class PromptsController < ApplicationController
    def index
      
    end
  
    def search
      query = params[:search_prompts].presence && params[:search_prompts][:query]
  
      if query
        @prompts = Prompt.search(query)
      end
    end
  end
  