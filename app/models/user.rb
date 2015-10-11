class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :institutions
  has_and_belongs_to_many :groups

  ## The only role supported is profressor at this point

  def name
    self.email
  end

  def institution
    institutions.present? ? institutions.first.name : "No tiene colegio asociado"
  end
end
