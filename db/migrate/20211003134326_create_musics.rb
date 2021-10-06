class CreateMusics < ActiveRecord::Migration[6.1]
  def change
    create_table :musics do |t|
      t.string :title
      t.string :artist
      t.string :videoURL


      t.timestamps
    end
  end
end
