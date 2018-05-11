class Teacher < ApplicationRecord
  has_many :subject_teachers
  has_many :subjects, through: :subject_teachers

  has_many :teacher_klasses
  has_many :klasses, through: :teacher_klasses

  validates :name, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :email, presence: true
end
