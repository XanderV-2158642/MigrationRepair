class AddEnumsToAbp < ActiveRecord::Migration[7.1]
  def up
    execute <<-SQL
      ALTER TABLE animal_batch_parts ADD ggo ENUM('Mixed', 'Yes', 'No');
      ALTER TABLE animal_batch_parts ADD gender ENUM('Mixed', 'Male', 'Female');
      ALTER TABLE animal_batch_parts ADD specie ENUM('Mixed', 'Rat', 'Mouse');
      ALTER TABLE animal_batch_parts ADD ab_state ENUM('Mixed', 'Alive', 'Dead');
      SQL
  end
  def down
    remove_column :animal_batch_parts, :ggo
    remove_column :animal_batch_parts, :gender
    remove_column :animal_batch_parts, :specie
    remove_column :animal_batch_parts, :ab_state

  end
end
