class NotesController < InheritedResources::Base

  private

    def note_params
      params.require(:note).permit(:title, :content, :alarm)
    end
end

