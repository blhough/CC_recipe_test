class Recipe < ActiveRecord::Base
  has_many :ingredients, dependent: :destroy
  accepts_nested_attributes_for :ingredients, allow_destroy: true, reject_if: proc { |attributes| attributes['name'].blank? }
  validates :name, presence: true, length: { minimum: 2 }


  before_save :fix_cases

  def fix_cases
    self.name = self.name.split.map(&:capitalize ).join(' ')
  end
end
