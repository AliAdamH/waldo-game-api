# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# seeds each waldo landscape with the appropriate coordinates.

# utility for file attachements

def attach_landscape(object, image_name)
  object.landscape.attach(io: File.open(File.join(Rails.root, 'public', 'playgrounds', image_name)), filename: image_name, content_type: "image/jpg")
end

def attach_thumbnail(object, image_name)
  object.thumbnail.attach(io: File.open(File.join(Rails.root, 'public', 'playground_thumbnails', image_name)), filename: image_name, content_type: "image/jpg")
end

beach = Image.new(
  title: 'Beach',
  waldo_height_upper: 0.4,
  waldo_height_lower: 0.368,
  waldo_width_lower: 0.61,
  waldo_width_upper: 0.625,

  wizard_height_upper: 0.374,
  wizard_height_lower: 0.345,
  wizard_width_lower: 0.262,
  wizard_width_upper: 0.273,

  wilma_height_upper: 0.415,
  wilma_height_lower: 0.403,
  wilma_width_lower: 0.769,
  wilma_width_upper: 0.777,

  odlaw_height_upper: 0.383,
  odlaw_height_lower: 0.349,
  odlaw_width_lower: 0.105,
  odlaw_width_upper: 0.111
)
beach.landscape.attach(io: File.open(File.join(Rails.root, 'public', 'playgrounds' ,'beach.jpg')), filename: "beach.jpg", content_type: "image/jpg")
beach.thumbnail.attach(io: File.open(File.join(Rails.root, 'public', 'playground_thumbnails' ,'beach_thumb.jpg')), filename: "beach_thumb.jpg", content_type: "image/jpg")
beach.save


party = Image.new(
  title: 'Party',
  waldo_width_upper: 0.71,
  waldo_width_lower: 0.695,
  waldo_height_upper: 0.44,
  waldo_height_lower: 0.42,

  wizard_width_upper: 0.7,
  wizard_width_lower: 0.68,
  wizard_height_upper: 0.68,
  wizard_height_lower: 0.66,

  wilma_width_upper: 0.595,
  wilma_width_lower: 0.585,
  wilma_height_upper: 0.677,
  wilma_height_lower: 0.66,

  odlaw_width_upper: 0.56,
  odlaw_width_lower: 0.54,
  odlaw_height_upper: 0.804,
  odlaw_height_lower: 0.789
)
attach_landscape(party, 'party.jpg')
attach_thumbnail(party, 'party_thumb.jpg')
party.save

snow = Image.new(
  title: 'Ski',
  waldo_width_upper: 0.866,
  waldo_width_lower: 0.84,
  waldo_height_upper: 0.771,
  waldo_height_lower: 0.715,

  wizard_width_upper: 0.073,
  wizard_width_lower: 0.062,
  wizard_height_upper: 0.775,
  wizard_height_lower: 0.742,

  wilma_width_upper: 0.495,
  wilma_width_lower: 0.484,
  wilma_height_upper: 0.434,
  wilma_height_lower: 0.407,

  odlaw_width_upper: 0.32,
  odlaw_width_lower: 0.31,
  odlaw_height_upper: 0.645,
  odlaw_height_lower: 0.631
)
attach_landscape(snow, 'snowfield.jpg')
attach_thumbnail(snow, 'snow_thumb.jpg')
snow.save



olympics = Image.new(
  title: 'Olympics',
  waldo_width_upper: 0.288,
  waldo_width_lower: 0.271,
  waldo_height_upper: 0.357,
  waldo_height_lower: 0.323,

  wizard_width_upper: 0.615,
  wizard_width_lower: 0.6,
  wizard_height_upper: 0.894,
  wizard_height_lower: 0.848,

  wilma_width_upper: 0.253,
  wilma_width_lower: 0.247,
  wilma_height_upper: 0.736,
  wilma_height_lower: 0.716,

  odlaw_width_upper: 0.6,
  odlaw_width_lower: 0.593,
  odlaw_height_upper: 0.663,
  odlaw_height_lower: 0.633
)
attach_landscape(olympics, 'olympics.jpg')
attach_thumbnail(olympics, 'olympics_thumb.jpg')
olympics.save

space = Image.new(
  title: 'Space',
  waldo_width_upper: 0.407,
  waldo_width_lower: 0.4,
  waldo_height_upper: 0.635,
  waldo_height_lower: 0.618,

  wizard_width_upper: 0.784,
  wizard_width_lower: 0.777,
  wizard_height_upper: 0.592,
  wizard_height_lower: 0.572,

  wilma_width_upper: 0.298,
  wilma_width_lower: 0.293,
  wilma_height_upper: 0.528,
  wilma_height_lower: 0.511,

  odlaw_width_upper: 0.076,
  odlaw_width_lower: 0.067,
  odlaw_height_upper: 0.698,
  odlaw_height_lower: 0.683
)
attach_landscape(space, 'space.jpg')
attach_thumbnail(space, 'space_thumb.jpg')
space.save

