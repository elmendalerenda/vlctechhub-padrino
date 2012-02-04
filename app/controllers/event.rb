Vlctechhub.controllers :event do

  get "/:year/:month" do
    content_type(:json)

    search_criteria = {:year => params[:year], :month => params[:month]}

    results = Event.where(search_criteria).all
    results = clean_events(results)
    return results.to_json
  end

 get "mailchimp/:year/:month" do
    search_criteria = {:year => params[:year], :month => params[:month]}

    results = Event.where(search_criteria).all
    @results = clean_events(results)
    @results = add_week_day(@results)
    
    erb :mailchimp
  end

end
