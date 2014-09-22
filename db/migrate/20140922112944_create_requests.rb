class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :userId
      t.string :defecttype
      t.string :defectdescription
      t.string :defectseverity
      t.datetime :requesteddate
      t.string :currentstatus
      t.datetime :requestresolvedate
      t.integer :paymentamount

      t.timestamps
    end
  end
end
