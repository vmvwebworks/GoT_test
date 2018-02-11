class ImporterController < ApplicationController
  def form
  end

  def upload
    @csv = SmarterCSV.process(params[:csv].tempfile)
  end

  private

  def csv_options
    {
      headers: true,
      header_converters: :symbol,
    }
  end
end
