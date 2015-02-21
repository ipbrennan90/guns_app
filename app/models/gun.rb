class Gun < ActiveRecord::Base

  validates :name, :manufacturer, :caliber, presence: true
  validates :name, unique: true
end
