class Book < ActiveRecord::Base
  belongs_to :author
  
  def author_full_name
    if self.author
      self.author.full_name
    else
      "Autor nieznany"
    end
  end
end
