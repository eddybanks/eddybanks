class Project
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :folder, type: String
  field :image, type: String
  field :start_date, type: Date
  field :end_date, type: Date
  embeds_many :softwares
end
