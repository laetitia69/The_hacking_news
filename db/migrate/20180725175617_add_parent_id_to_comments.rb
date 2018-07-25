class AddParentIdToComments < ActiveRecord::Migration[5.2]
  def change
  	#rajout de la colonne parent_id dans la table comments
    add_column :comments, :parent_id, :integer
  end
end
