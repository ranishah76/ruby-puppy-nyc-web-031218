require 'pry'

class Dog

@@all = []
attr_reader :name

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  puts @@all.map { |dog| dog.name }
  binding.pry
end

def self.clear_all
  @@all.clear
end

end
