class Prova < ActiveRecord::Base
  belongs_to :aluno

 validate :valida_nota

  def valida_nota
    errors.add(:nota, 'nao pode ser maior que 10.0') if nota > 10
  end

end
