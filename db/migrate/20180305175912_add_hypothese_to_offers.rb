class AddHypotheseToOffers < ActiveRecord::Migration[5.1]
  def change
    add_reference :offers, :hypothese, foreign_key: true
  end
end
