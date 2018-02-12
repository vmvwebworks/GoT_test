module CharacterMock
  extend ActiveSupport::Concern
  included do
    def fields
      [
        "name",
        "description",
        "biography",
        "personality",
        "seasons",
        "titles",
        "status",
        "death",
        "origin",
        "allegiance",
        "culture",
        "religion",
        "predecessor",
        "successor",
        "father",
        "mother",
        "spouse",
        "children",
        "siblings",
        "lovers",
        "image_1_src",
        "image_1_caption",
        "image_2_src",
        "image_2_caption",
        "image_3_src",
        "image_3_caption",
        "image_4_src",
        "image_4_caption",
        "image_5_src",
        "image_5_caption",
        "image_6_src",
        "image_6_caption",
        "image_7_src",
        "image_7_caption",
        "image_8_src",
        "image_8_caption",
        "house"
      ]
    end
    def import_create
      @csv = SmarterCSV.process(params[:csv].tempfile)
      @fields = fields
      @number_of_images = [*1..8]
      @csv.each do |char|
        unless char[:house].blank?
          @character_house = House.find_or_create_by!(name: char[:house])
          @character= Character.new
          @character.name = char[:name]
          @character.description = char[:description]
          @character.biography = char[:biography]
          @character.seasons = char[:seasons]
          @character.titles = char[:titles]
          @character.status = char[:status]
          @character.death = char[:death]
          @character.origin = char[:origin]
          @character.allegiance = char[:allegiance]
          @character.culture = char[:culture]
          @character.religion = char[:religion]
          @character.predecessor = char[:predecessor]
          @character.successor = char[:successor]
          @character.father = char[:father]
          @character.mother = char[:mother]
          @character.spouse = char[:spouse]
          @character.children = char[:children]
          @character.siblings = char[:siblings]
          @character.lovers = char[:lovers]
          @character.house = @character_house
          @character.save
          
          @number_of_images.each do |image|
            build_src = "image_#{image}_src".to_sym
            build_caption = "image_#{image}_caption".to_sym
            @character.images.create!(
              source: char[build_src],
              caption: char[build_caption]
            )
          end
        end
      end
    end
  end
end
