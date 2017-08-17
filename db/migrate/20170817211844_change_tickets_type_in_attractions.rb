class ChangeTicketsTypeInAttractions < ActiveRecord::Migration
  def change
  	change_column :attractions, :tickets, :integer
  end
end
