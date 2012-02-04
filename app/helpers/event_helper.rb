# Helper methods defined here can be accessed in any controller or view in the application

Vlctechhub.helpers do
    def clean_events(events)
        attributes_to_remove = ["_id", "_type", "updated_at", 'created_at']

        events.collect{ |x| x.as_document.reject{|key, v| attributes_to_remove.include?(key)} }
    end

end
