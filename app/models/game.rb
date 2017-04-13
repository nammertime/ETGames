class Game < ApplicationRecord

 validates :ProductName, presence: true
 validates :ProductPrice, presence: true
 validates :ProductStock, presence: true
 validates :ProductDesc, presence: true
 validates :product_genres, presence: true

end
