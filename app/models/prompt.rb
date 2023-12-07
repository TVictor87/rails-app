class Prompt < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  settings do
    mappings dynamic: false do
      indexes :text, type: :text, analyzer: :english
    end
  end
end
