class Turma < ActiveRecord::Base
  belongs_to :professor
  has_many :alunos, dependent: :restrict_with_error

  validates_presence_of :professor_id, :nome
end
