module SearchableByName
  extend ActiveSupport::Concern

  module ClassMethods
    def search(term)
      where("name ILIKE ?", "%#{term}%")
    end
  end
end
