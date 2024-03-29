class Event
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields

  # field <name>, :type => <type>, :default => <value>
  field :date, :type => Integer
  field :month, :type => Integer
  field :year, :type => Integer
  field :time, :type => String
  field :name, :type => String
  field :organizer, :type => String
  field :description, :type => String
  field :icon, :type => String
  field :location, :type => String
  field :location_url, :type => String
  field :follow, :type => String

  # You can define indexes on documents using the index macro:
  # index :field <, :unique => true>

  # You can create a composite key in mongoid to replace the default id using the key macro:
  # key :field <, :another_field, :one_more ....>
end
