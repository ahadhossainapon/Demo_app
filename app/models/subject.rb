class Subject < ApplicationRecord
  has_many :subject_teachers
  has_many :teachers, through: :subject_teachers

  has_many :klass_subjects
  has_many :klasses, through: :klass_subjects

  validates :name, presence: true
  validates :title, presence: true
  #validates :teachers, presence: true
#  validates :klasses, presence: true
end
