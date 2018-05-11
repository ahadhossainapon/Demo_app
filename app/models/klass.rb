class Klass < ApplicationRecord
  has_many :klass_subjects
  has_many :subjects, through: :klass_subjects

  has_many :teacher_klasses
  has_many :teachers, through: :teacher_klasses
end
