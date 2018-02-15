module CharacterMock
  extend ActiveSupport::Concern
  included do
    def import_create
      @number_of_images = [*1..8]
      File.open(params[:csv].tempfile, "r:bom|utf-8") do |csv|
        chars = SmarterCSV.process(csv);
        chars.each do |char|
          unless char[:house].blank?
            @character_house = House.find_or_create_by!(name: char[:house].force_encoding("UTF-8"))
            unless char[:name].blank? || char[:description].blank?
              @character= Character.new
              @character.name = char[:name].force_encoding("UTF-8")
              @character.description = char[:description].force_encoding("UTF-8")
              unless char[:biography].blank?
                @character.biography = char[:biography]
              end
              unless char[:seasons].blank?
                @character.seasons = char[:seasons]
              end
              unless char[:title].blank?
                @character.titles = char[:titles]
              end
              unless char[:status].blank?
                @character.status = char[:status]
              end
              unless char[:death].blank?
                @character.death = char[:death]
              end
              unless char[:origin].blank?
                @character.origin = char[:origin]
              end
              unless char[:allegiance].blank?
                @character.allegiance = char[:allegiance]
              end
              unless char[:culture].blank?
                @character.culture = char[:culture]
              end
              unless char[:religion].blank?
                @character.religion = char[:religion]
              end
              unless char[:predecessor].blank?
                @character.predecessor = char[:predecessor]
              end
              unless char[:successor].blank?
                @character.successor = char[:successor]
              end
              unless char[:father].blank?
                @character.father = char[:father]
              end
              unless char[:mother].blank?
                @character.mother = char[:mother]
              end
              unless char[:spouse].blank?
                @character.spouse = char[:spouse]
              end
              unless char[:children].blank?
                @character.children = char[:children]
              end
              unless char[:siblings].blank?
                @character.siblings = char[:siblings]
              end
              unless char[:lovers].blank?
                @character.lovers = char[:lovers]
              end
              unless char[:father].blank?
                @character.father = char[:father]
              end
              unless char[:father].blank?
                @character.father = char[:father]
              end
              @character.house = @character_house
              @character.save!
              @number_of_images.each do |image|
                build_src = "image_#{image}_src".to_sym
                build_caption = "image_#{image}_caption".to_sym
                unless char[build_src].blank? && char[build_caption].blank?
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
    end
  end
end
