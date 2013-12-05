class Aluno < ActiveRecord::Base
  belongs_to :turma
  has_many :provas, dependent: :delete_all
  accepts_nested_attributes_for :provas, :allow_destroy => true

  validates_presence_of :nome, :turma_id
  validates_associated :provas

  def situacao
    return "Provas Incompletas" if self.provas.count < 4
    self.provas.sum(&:nota) / 4 >= 6.0 ? "Aprovado" : "Reprovado"
  end

end
