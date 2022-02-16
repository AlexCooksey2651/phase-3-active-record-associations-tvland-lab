class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def characters
    self.characters
  end

  def shows
    self.shows
  end

  def full_name
    full_name = "#{self.first_name} + #{self.last_name}"
    full_name
  end

  def list_roles
    roles = []
    self.characters.each do |character|
        roles << "#{character} - #{character.show}"
    end
    roles
  end
end