class DeleteDogFromEmployees < ActiveRecord::Migration[5.1]
  def change
    remove_column :employees, :dog, :string
    remove_column :dogs, :employee_id, :integer
    add_column :employees, :dog_id, :integer

  end
end
