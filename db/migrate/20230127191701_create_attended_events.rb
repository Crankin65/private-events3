class CreateAttendedEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :attended_events do |t|
      t.references :event, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
