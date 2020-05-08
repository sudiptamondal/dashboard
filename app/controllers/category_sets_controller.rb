class CategorySetsController < InheritedResources::Base

  private

    def category_set_params
      params.require(:category_set).permit(:category_set_name)
    end

end
