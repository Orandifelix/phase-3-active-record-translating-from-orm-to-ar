class Dog < ActiveRecord::Base 
  
  def self.create(attributes)
    dog = self.new(attributes)
    dog.save
    dog
  end
  def save
    super
    self.id = self.class.last.id if self.id.nil?
    self
  end

  def update(attributes)
    self.update(attributes)
  end
  
  def self.find_or_create_by(attributes)
    self.find_by(attributes) || self.create(attributes)
  end
  def self.find_by_name(name)
    self.find_by(name: name)
  end
  def self.find_by_id(id)
    self.find(id)
  end
end

