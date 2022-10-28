require 'pry'

class Pet
    attr_accessor :breed, :disposition, :name

    @@pets = []


    def initialize(breed, disposition, name)
        @breed = breed
        @disposition = disposition
        @name = name
        @@pets << self
    end

    def self.all
        @@pets
    end

end

binding.pry
'pls'