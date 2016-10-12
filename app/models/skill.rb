class Skill
  include Mongoid::Document
  field :name, type: String
  field :skill_type, type: String
  field :hierarchy, type: Integer
  field :description, type: String
  field :list, type: Array
end
