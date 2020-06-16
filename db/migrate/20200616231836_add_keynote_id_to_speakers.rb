class AddKeynoteIdToSpeakers < ActiveRecord::Migration[6.0]
  def change
    add_column :speakers, :keynote_id, :integer
  end
end
