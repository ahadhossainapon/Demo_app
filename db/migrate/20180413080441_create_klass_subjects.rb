class CreateKlassSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :klass_subjects do |t|
      t.integer :klass_id
      t.integer :subject_id
      t.timestamps
    end
  end
end
