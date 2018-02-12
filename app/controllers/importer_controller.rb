class ImporterController < ApplicationController
  include CharacterMock
  def form
  end
  def upload
    import_create
  end
end
