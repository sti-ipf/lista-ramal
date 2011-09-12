class Telefone < ActiveRecord::Base

  validates_presence_of :nome, :ramal, :sala, :vinculo


end
