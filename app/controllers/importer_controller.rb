class ImporterController < ApplicationController
  def form
  end
  def upload
    @csv = SmarterCSV.process(params[:csv].tempfile)
    @fields = Character.fields
  end
end
