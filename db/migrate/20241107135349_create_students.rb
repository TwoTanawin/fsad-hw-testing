class CreateStudents < ActiveRecord::Migration[7.2]
  def change
    create_table :students do |t|
      t.string :studentid
      t.string :name

      t.timestamps
    end
  end
end
