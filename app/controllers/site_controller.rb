class SiteController < ApplicationController
  def search
    term = params[:term]
    return if term.blank?

    @result = [Artist, Label, Album].map do |model|
      model.search(term)
    end.flatten

  end
end
