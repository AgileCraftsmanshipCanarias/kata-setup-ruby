# frozen_string_literal: true

require_relative "kata/version"

module Kata
  class ExampleClass
    def initialize(dependency)
      @dependency = dependency
    end


    def get_value
      @dependency.get_value
    end
  end

  class Dependency
    def get_value
      raise NotImplementedError.new("You must implement the #{self.class} interface")
    end
  end

  class DependencyImpl
    def get_value
      0
    end
  end
end
