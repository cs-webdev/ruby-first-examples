require_relative 'printable'

class Cat
  include Printable
  attr_reader :name

  def initialize(name)
    @kittens = []
    @name = name
  end

  def give_birth(number_of_kittens)
    1.upto number_of_kittens do |num|
      @kittens << Cat.new("Garfield no. #{num}")
    end
  end

  def each_kitten
    @kittens.each do |kitten|
      yield kitten
    end
  end
end

garfield = Cat.new "Garfield"

garfield.give_birth 5

garfield.each_kitten do |kitten|
  puts kitten.name
end
