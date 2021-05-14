class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes, id: :uuid do |t|
      t.string :name,
      t.number :portions,
      
      t.timestamps
    end
  end
end
