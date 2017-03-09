class AddCommentableColumnToComment < ActiveRecord::Migration
  def change
    add_reference :comments, :commentable, index: true, foreign_key: true
  end
end
