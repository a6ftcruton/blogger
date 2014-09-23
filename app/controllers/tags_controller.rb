class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tag = Tag.all
  end

  def destroy
    @tag = Tag.find(params[:id]).destroy
    flash.notice = "Successfully deleted '#{@tag.name}'."

    redirect_to tags_path
  end
end
