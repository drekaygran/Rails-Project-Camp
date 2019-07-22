class RemoveCampSessionFromCamper < ActiveRecord::Migration[5.2]
  def change
    remove_column :campers, :camp_session, :string
  end
end
