class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    actors_list = []
    self.actors.each do |actor|
        actors_list << actor.full_name
    end
    actors_list
  end
end