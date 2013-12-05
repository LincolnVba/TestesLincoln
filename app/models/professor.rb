class Professor < ActiveRecord::Base
  has_many :turmas, dependent: :restrict_with_error

  validates_presence_of :nome, :formacao
end
