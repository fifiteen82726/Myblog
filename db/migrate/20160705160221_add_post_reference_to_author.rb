class AddPostReferenceToAuthor < ActiveRecord::Migration
 
  def change
    add_reference :posts, :author, index: true
  end

end
