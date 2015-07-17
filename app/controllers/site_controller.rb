class SiteController < ApplicationController
  def index
    @checklist_items = ChecklistItem.all
  end

  def about
  end

  def contact
  end

  def earthquakes
  end
end
