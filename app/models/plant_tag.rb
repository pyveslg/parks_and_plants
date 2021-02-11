class PlantTag < ApplicationRecord
  belongs_to :plant
  belongs_to :tag


  validates :tag, uniqueness: { scope: :plant,
    message: "only 1 identical tag" }
end
