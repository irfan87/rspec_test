class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.text :task_description
      t.integer :project_id

      t.timestamps
    end
    add_index :tasks, :project_id
  end
end
