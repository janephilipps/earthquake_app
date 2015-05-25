class ChecklistItemsController < ApplicationController

  def create
    @checklist_item = ChecklistItem.new(checklist_item_params)
    @checklist_item.save
    redirect_to root_path
  end

  private

  def checklist_item_params
    params.require(:checklist_item).permit(:description)
  end

end