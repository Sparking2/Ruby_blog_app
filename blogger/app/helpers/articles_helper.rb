# frozen_string_literal: false

# Helper for the adding a new class.
module ArticlesHelper
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
