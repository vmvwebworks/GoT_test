class ImporterController < ApplicationController
  include CharacterMock
  def form
    @characters = Character.all
    @houses = House.all
  end
  def upload
    import_create
  end
end
