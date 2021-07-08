class Product < ApplicationRecord
  belongs_to :restaurant 
  
  #has_many :items #acrescentar depois (acho q é desnecessário - gabriel)

  #relação

  #validação
  validates :course_name, :photo, :description, :price, :portion, presence: true

  #funções/métodos
    
#end

end
