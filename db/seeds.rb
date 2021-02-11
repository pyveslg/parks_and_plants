Garden.destroy_all if Rails.env.development?
Plant.destroy_all if Rails.env.development?

little = Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

other = Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

Plant.create!(
  name: "Cactus",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpJVSb0oHPLS2EAM9dXo6bTX8PBGPlnJznw2m8pavFz98BCXKKi5uQUobjrzc&usqp=CAc",
  garden: little
)

Plant.create!(
  name: "Ficus",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd5KBBw3pSOLYt9VaKgbivYT3WbrjuBtJey1vhHOclxt3M55ihfRwlg_MMuQ&usqp=CAc",
  garden: little
)

Plant.create!(
  name: "Citronnier",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI1zjvKs7-yS-zctAU0Xow8jQ0rFXl_k-gDIHcgdtGiNYF3xQqtfQ4ShKPmdRulqQkp0JNE2Oa&usqp=CAc",
  garden: other
)

Tag.destroy_all

tags = ["Fruitier", "Plante Grasse", "Cacté", "Plante Verte", "Agrumes" ]
### Créer des instances de Tag
tags.each do |tag|
  # new_tag = Tag.new
  # new_tag.name = tag
  # new_tag.save
  Tag.create(name: tag)
end
