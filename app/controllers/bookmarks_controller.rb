class BookmarksController < InheritedResources::Base

  private

    def bookmark_params
      params.require(:bookmark).permit(:title, :link, :category_id)
    end

end
