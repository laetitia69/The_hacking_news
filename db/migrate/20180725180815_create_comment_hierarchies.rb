class CreateCommentHierarchies < ActiveRecord::Migration[5.2]
  def change
    #création de la table comment_hierarchies
    create_table :comment_hierarchies, :id => false do |t|
      t.integer  :ancestor_id, :null => false   # ID des parents, grands parents, arrières grands parents... comments
      t.integer  :descendant_id, :null => false # ID du commentaire ciblé
      t.integer  :generations, :null => false   # Nombre de générations generations entre l'ancêtre et ses descendants. Parent/child = 1, par exemple
    end

    #crée la hierarchie des commentaires 

    # Pour toute la progéniture de...  (si groupe existant, crée génération)
    add_index :comment_hierarchies, [:ancestor_id, :descendant_id, :generations], :unique => true, :name => "comment_anc_desc_udx"
    # Pour tous les ancêtres de... (si groupe existant, crée génération)
    add_index :comment_hierarchies, [:descendant_id], :name => "comment_desc_idx"
  end
end
