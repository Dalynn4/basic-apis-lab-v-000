class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    raise.inspect
       @resp = Faraday.get 'https://api.github.com' do |req|
        req.params['client_id'] = 'Iv1.ef7b896962619bae'
        req.params['client_secret'] = 'f9874efb89be0cbabff97f432c7b8f86752245d6'
        req.params['query'] = params[:query]
       
      end
      @body = JSON.parse(@resp.body)
      
 
 
    render 'search'
  end
end
