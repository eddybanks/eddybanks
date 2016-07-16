class Skill
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  embedded_in :skill_component
end
