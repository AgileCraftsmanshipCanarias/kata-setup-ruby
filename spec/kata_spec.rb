# frozen_string_literal: true

RSpec.describe Kata do
  it "has a version number" do
    expect(Kata::VERSION).not_to be nil
  end

  it "works with manual mocking" do
    dependency = Kata::DependencyImpl.new
    example_class = Kata::ExampleClass.new(dependency)

    value = example_class.get_value

    expect(value).to eq(0)
  end

  it "works with rspec mocking" do
    dependency = double("dependency")
    allow(dependency).to receive(:get_value).and_return(0)
    example_class = Kata::ExampleClass.new(dependency)

    value = example_class.get_value

    expect(value).to eq(0)
  end
end
