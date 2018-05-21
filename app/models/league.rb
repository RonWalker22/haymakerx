class League < ApplicationRecord
  has_many :wallets, dependent: :delete_all
  has_many :league_users, dependent: :delete_all
  has_many :users, :through => :league_users
  has_many :exchange_leagues, dependent: :delete_all
  has_many :exchanges, :through => :exchange_leagues
end
