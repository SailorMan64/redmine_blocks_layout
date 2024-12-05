class CreateTables < ActiveRecord::Migration[4.2]
  def change
    create_table :overview_blocks do |t|
      t.integer :project_id, null: false, unique: true
      t.string :name, null: false
    end

    create_table :home_blocks do |t|
      t.string :name, null: false, unique: true
    end

    reversible do |dir|
      dir.up do
        Project.find_each do |prj|
          %w[members news issues].each do |block_name|
            OverviewBlock.create!(project_id: prj.id, name: block_name)
          end
        end
      end
    end
  end
end
