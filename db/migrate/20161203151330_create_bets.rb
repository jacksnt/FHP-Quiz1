class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.string :bet
      t.decimal :amount
      t.string :party
      t.boolean :status

      t.timestamps
    end

  end
end
