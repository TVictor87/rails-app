class CsvImportService
  require 'csv'

  def call(file)
    opened_file = File.open(file)
    options = { headers: true, col_sep: ',' }
    
    CSV.foreach(opened_file, **options) do |row|
      prompt_hash = {}
      prompt_hash[:text] = row['Prompt']

      Prompt.find_or_create_by!(prompt_hash)
    end
  end
end