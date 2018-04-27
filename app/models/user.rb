class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # has_many :gardens
  has_one :garden

  after_create :add_garden

  def add_garden
  	g = Garden.new
  	g.name = "Personal Garden"
    g.id = self.id
  	self.garden = g
  	g.save
  	self.save
  end

end
     

