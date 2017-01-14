class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.integer :supervisor_id
      t.integer :cosupervisor_id
      t.integer :specialization_id
      t.integer :project_nature
      t.text :description
      t.text :outcomes
      t.text :scope

      t.timestamps
    end
  end
end
