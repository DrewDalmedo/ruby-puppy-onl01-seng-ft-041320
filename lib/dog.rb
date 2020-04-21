# Add your code here
require 'pry'

class Dog
    
    # class variables
    @@all = []

    attr_reader :name
    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    private

    def self.all
        @@all
    end

    def self.clear_all
        @@all = []
    end

    def self.print_all
        @@all.each do |dog|
            puts "#{dog.name}"
        end
    end
end