class ChecklistItemsController < ApplicationController

  def create
    @checklist_item = ChecklistItem.new(checklist_item_params)
    @checklist_item.save
    redirect_to root_path
  end

  # def update
  #   checklist_item_id = params[:id]
  #   checklist_item = ChecklistItem.find(checklist_item_id)
  # end

  def destroy
    @checklist_item = ChecklistItem.find(params[:id])
    @checklist_item.destroy
    redirect_to root_path
  end

  private

  def checklist_item_params
    params.require(:checklist_item).permit(:description)
  end

end