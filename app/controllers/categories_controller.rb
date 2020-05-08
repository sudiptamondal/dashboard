class CategoriesController < InheritedResources::Base

  private

    def category_params
      params.require(:category).permit(:category_set_id, :category_name)
    end

end
